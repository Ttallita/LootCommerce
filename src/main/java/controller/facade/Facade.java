package controller.facade;

import controller.strategy.IStrategy;
import controller.strategy.impl.cliente.*;
import controller.strategy.impl.endereco.VerificarEnderecoStrategy;
import dao.*;
import model.Result;
import model.EntidadeDominio;
import model.Usuario;
import model.cliente.CartaoDeCredito;
import model.cliente.Cliente;
import model.cliente.Endereco;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Facade implements IFacade {

    private Map<String, IDAO> daosMap;
    private Map<String, Map<String, List<IStrategy>>> regrasDeNegocioMap;

    private Result result;

    public Facade() {
        daosMap = new HashMap<>();
        daosMap.put(Cliente.class.getName(), new ClienteDAO());
        daosMap.put(CartaoDeCredito.class.getName(), new CartaoDeCreditoDAO());
        daosMap.put(Endereco.class.getName(), new EnderecoDAO());
        daosMap.put(Usuario.class.getName(), new UsuarioDAO());

        regrasDeNegocioMap = new HashMap<>();

        // Regras de validação
        ValidarDataStrategy validarDataStrategy = new ValidarDataStrategy();
        VerificarClienteStrategy verificarClienteStrategy = new VerificarClienteStrategy();
        VerificarCpfStrategy verificarCpfStrategy = new VerificarCpfStrategy();
        VerificarEmailStrategy verificarEmailStrategy = new VerificarEmailStrategy();
        VerificarSenhaStrategy verificarSenhaStrategy = new VerificarSenhaStrategy();
        VerificarEnderecoStrategy verificarEnderecoStrategy = new VerificarEnderecoStrategy();

        //Lista de regras de validação do cliente
        List<IStrategy> regraDeNegocioSalvarCliente = new ArrayList<>();
        List<IStrategy> regraDeNegocioAtualizarCliente = new ArrayList<>();

        regraDeNegocioSalvarCliente.add(validarDataStrategy);
        regraDeNegocioSalvarCliente.add(verificarClienteStrategy);
        regraDeNegocioSalvarCliente.add(verificarCpfStrategy);
        regraDeNegocioSalvarCliente.add(verificarEmailStrategy);
        regraDeNegocioSalvarCliente.add(verificarSenhaStrategy);
        regraDeNegocioSalvarCliente.add(verificarEnderecoStrategy);

        regraDeNegocioAtualizarCliente.add(validarDataStrategy);
        regraDeNegocioAtualizarCliente.add(verificarClienteStrategy);
        regraDeNegocioAtualizarCliente.add(verificarCpfStrategy);

        //Mapa das regras de négocio do cliente por operação
        Map<String, List<IStrategy>> regrasDeNegocioCliente = new HashMap<>();
        regrasDeNegocioCliente.put("salvar", regraDeNegocioSalvarCliente);
        regrasDeNegocioCliente.put("atualizar", regraDeNegocioAtualizarCliente);

        regrasDeNegocioMap.put(Cliente.class.getName(), regrasDeNegocioCliente);
    }


    @Override
    public Result salvar(EntidadeDominio entidade) {
        result = new Result();

        String classe = entidade.getClass().getName();

        String msgValidacao = validarRegrasDeNegocio(entidade, "salvar");

        List<EntidadeDominio> entidades = new ArrayList<>();
        entidades.add(entidade);

        result.setEntidades(entidades);

        if(msgValidacao == null) {
            IDAO dao = daosMap.get(classe);

            dao.salvar(entidade);
        } else {
            result.setMsg(msgValidacao);
        }

        return result;

    }

    @Override
    public Result atualizar(EntidadeDominio entidade) {

        result = new Result();

        String classe = entidade.getClass().getName();

        String msgValidacao = validarRegrasDeNegocio(entidade, "atualizar");

        List<EntidadeDominio> entidades = new ArrayList<>();
        entidades.add(entidade);

        result.setEntidades(entidades);

        if(msgValidacao == null) {
            IDAO dao = daosMap.get(classe);

            dao.atualizar(entidade);
        } else {
            result.setMsg(msgValidacao);
        }

        return result;

    }

    @Override
    public Result deletar(EntidadeDominio entidade) {
        return null;
    }

    @Override
    public Result listar(EntidadeDominio entidade, String operacao) {
        result = new Result();

        String nomeClasse = entidade.getClass().getName();

        String msgValidacao = validarRegrasDeNegocio(entidade, operacao);

        if(msgValidacao == null) {
            IDAO dao = daosMap.get(nomeClasse);

            List<EntidadeDominio> listaEntidades = dao.listar(entidade, operacao);

            result.setEntidades(listaEntidades);
        } else {
            result.setMsg(msgValidacao);
        }

        return result;
    }

    public String validarRegrasDeNegocio(EntidadeDominio entidadeDominio, String operacao) {
        String nomeClasse = entidadeDominio.getClass().getName();

        StringBuilder msg = new StringBuilder();

        Map<String, List<IStrategy>> regrasDeNegocio = regrasDeNegocioMap.get(nomeClasse);

        if(regrasDeNegocio != null) {
            List<IStrategy> regras = regrasDeNegocio.get(operacao);

            if(regras != null) {
                for (IStrategy strategy : regras) {
                    String msgRegra = strategy.processa(entidadeDominio);
                    if(msgRegra != null) {
                        msg.append(msgRegra + "\n");
                    }
                }
            }
        }

        if(msg.length() > 0) {
            return msg.toString();
        } else {
            return null;
        }
    }
}
