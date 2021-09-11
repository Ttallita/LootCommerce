package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import dao.ClienteDAO;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.cliente.Cliente;
import model.cliente.Endereco;
import model.cliente.EnderecoType;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class EnderecoViewHelper implements IViewHelper {


    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String tpResidencia = request.getParameter("tpResidencia");
            String tpLogradouro = request.getParameter("tpLogradouro");
            String logradouro = request.getParameter("logradouro");
            String numero = request.getParameter("numero");
            String bairro = request.getParameter("bairro");
            String cep = request.getParameter("cep");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
            String pais = request.getParameter("pais");
            String apelido = request.getParameter("apelido");
            String observacao = request.getParameter("observacao");

            Endereco endereco = new Endereco();

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
            endereco.setApelido(apelido);
            endereco.setObservacoes(observacao);

            if(!request.getParameterMap().containsKey("tpEndereco")) {
               endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
            } else {
                String tpEndereco = request.getParameter("tpEndereco");

                if(tpEndereco.equals("Cobrança")) {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA);
                } else if(tpEndereco.equals("Entrega")) {
                    endereco.setTipoEndereco(EnderecoType.ENTREGA);
                } else {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
                }
            }


            if(request.getSession().getAttribute("usuarioLogado") != null) {
                Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
                Cliente cliente = new Cliente();
                cliente.setUsuario(usuario);
                cliente.setId(usuario.getId());
                endereco.setCliente(cliente);
            }

            return endereco;
        } else if(operacao.equals("atualizar")) {
            String tpResidencia = request.getParameter("tpResidencia");
            String tpLogradouro = request.getParameter("tpLogradouro");
            String logradouro = request.getParameter("logradouro");
            String numero = request.getParameter("numero");
            String bairro = request.getParameter("bairro");
            String cep = request.getParameter("cep");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
            String pais = request.getParameter("pais");
            String apelido = request.getParameter("apelido");
            String observacao = request.getParameter("observacao");
            String idEndereco = request.getParameter("idEndereco");

            Endereco endereco = new Endereco();

            endereco.setId(Long.parseLong(idEndereco));
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
            endereco.setApelido(apelido);
            endereco.setObservacoes(observacao);

            String tpEndereco = request.getParameter("tpEndereco");

            if(tpEndereco.equals("Cobrança")) {
                endereco.setTipoEndereco(EnderecoType.COBRANCA);
            } else if(tpEndereco.equals("Entrega")) {
                endereco.setTipoEndereco(EnderecoType.ENTREGA);
            } else {
                endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
            }

            return endereco;

        } else if(operacao.equals("remover")) {
            Endereco endereco = new Endereco();

            Long idEndereco = Long.parseLong(request.getParameter("idEndereco"));

            endereco.setId(idEndereco);

            return endereco;
        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) throws IOException, ServletException {
        Usuario usuarioLogado = (Usuario) request.getSession().getAttribute("usuarioLogado");

        Cliente cliente = new Cliente();
        cliente.setUsuario(usuarioLogado);

        List<EntidadeDominio> entidade  = new ClienteDAO().listar(cliente, "listar");
        cliente = (Cliente) entidade.get(0);

        request.setAttribute("clienteLogado", cliente);
        request.setAttribute("aba", "enderecos");

        if(result.getMsg() == null) {
            request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, httpResponse);
        } else {
            String msgErro[] = result.getMsg().split("\n");

            request.setAttribute("mensagem", msgErro);
            request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, httpResponse);
        }
    }
}
