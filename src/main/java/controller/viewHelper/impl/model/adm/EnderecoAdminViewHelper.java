package controller.viewHelper.impl.model.adm;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.cliente.Cliente;
import model.cliente.endereco.Endereco;
import model.cliente.endereco.EnderecoType;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EnderecoAdminViewHelper implements IViewHelper {

    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String id_Cliente = request.getParameter("idCliente");
            String tpResidencia = request.getParameter("tpResidencia");
            String tpLogradouro = request.getParameter("tpLogradouro");
            String logradouro = request.getParameter("logradouro");
            String numero = request.getParameter("numero");
            String bairro = request.getParameter("bairro");
            String cep = request.getParameter("cep");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
            String pais = request.getParameter("pais");
            String observacao = request.getParameter("observacao");
            String apelido = request.getParameter("apelido");

            Endereco endereco = new Endereco();

            endereco.setApelido(apelido);
            endereco.setTipoResidencia(tpResidencia);
            endereco.setTipoLogradouro(tpLogradouro);
            endereco.setLogradouro(logradouro);
            endereco.setCliente(new Cliente());
            endereco.getCliente().setId(Long.parseLong(id_Cliente));

            if(!numero.isEmpty()) {
                endereco.setNumero(Integer.parseInt(numero));
            }

            endereco.setBairro(bairro);
            endereco.setCep(cep);
            endereco.setCidade(cidade);
            endereco.setEstado(estado);
            endereco.setPais(pais);
            endereco.setObservacoes(observacao);


            if(!request.getParameterMap().containsKey("tpEndereco")) {
                endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
            } else {
                String tpEndereco = request.getParameter("tpEndereco");

                if(tpEndereco.contains("Cobrança")) {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA);
                } else if(tpEndereco.contains("Entrega")) {
                    endereco.setTipoEndereco(EnderecoType.ENTREGA);
                } else {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
                }
            }

            return endereco;
        } else if(operacao.equals("atualizar")) {
            String idCliente = request.getParameter("id_cliente");
            String id_endereco = request.getParameter("idEndereco");
            String tpResidencia = request.getParameter("tpResidencia");
            String tpLogradouro = request.getParameter("tpLogradouro");
            String logradouro = request.getParameter("logradouro");
            String numero = request.getParameter("numero");
            String bairro = request.getParameter("bairro");
            String cep = request.getParameter("cep");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
            String pais = request.getParameter("pais");
            String observacao = request.getParameter("observacao");
            String apelido = request.getParameter("apelido");

            Endereco endereco = new Endereco();

            endereco.setId(Long.parseLong(id_endereco));
            endereco.setApelido(apelido);
            endereco.setTipoResidencia(tpResidencia);
            endereco.setTipoLogradouro(tpLogradouro);
            endereco.setLogradouro(logradouro);

            if(!numero.isEmpty()) {
                endereco.setNumero(Integer.parseInt(numero));
            }

            endereco.setBairro(bairro);
            endereco.setCep(cep);
            endereco.setCidade(cidade);
            endereco.setEstado(estado);
            endereco.setPais(pais);
            endereco.setObservacoes(observacao);


            if(!request.getParameterMap().containsKey("tpEndereco")) {
                endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
            } else {
                String tpEndereco = request.getParameter("tpEndereco");

                if(tpEndereco.contains("Cobrança")) {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA);
                } else if(tpEndereco.contains("Entrega")) {
                    endereco.setTipoEndereco(EnderecoType.ENTREGA);
                } else {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
                }
            }

            Cliente cliente = new Cliente();
            cliente.setId(Long.parseLong(idCliente));

            return endereco;
        } else {
            Long id = Long.parseLong(request.getParameter("idEndereco"));
            Long id_cliente = Long.parseLong(request.getParameter("idCliente"));

            Endereco endereco = new Endereco();
            endereco.setId(id);

            Cliente cliente = new Cliente();
            cliente.setId(id_cliente);

            Usuario usuario = new Usuario();
            usuario.setId(id_cliente);

            cliente.setUsuario(usuario);

            return endereco;
        }
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) {

    }
}
