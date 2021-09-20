package controller.viewHelper.impl.model.cliente;

import controller.viewHelper.IViewHelper;
import dao.ClienteDAO;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.cliente.CartaoDeCredito;
import model.cliente.Cliente;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

public class CartaoDeCreditoViewHelper implements IViewHelper {

    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String numCartao = request.getParameter("numCartao");
            String bandeira = request.getParameter("bandeira");

            String codigoCartao = request.getParameter("codigoCartao");
            String nomeCartao = request.getParameter("nomeCartao");

            CartaoDeCredito cartao = new CartaoDeCredito();

            cartao.setNumCartao(numCartao);
            cartao.setBandeira(bandeira);

            if(!codigoCartao.trim().isEmpty()) {
                cartao.setCodigo(Integer.parseInt(codigoCartao));
            }

            cartao.setNomeImpressoCartao(nomeCartao);

            if(!request.getParameter("dtValidade").trim().isEmpty()) {
                LocalDate dtValidade = LocalDate.parse(request.getParameter("dtValidade"));
                cartao.setDataValidade(dtValidade);
            }

            Cliente cliente = new Cliente();
            Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
            cliente.setUsuario(usuario);

            cartao.setCliente(cliente);

            return cartao;
        }else if(operacao.equals("atualizar")) {
            String numCartao = request.getParameter("numCartao");
            String bandeira = request.getParameter("bandeira");
            int codigoCartao = Integer.parseInt(request.getParameter("codigoCartao"));
            String nomeCartao = request.getParameter("nomeCartao");
            LocalDate dtValidade = LocalDate.parse(request.getParameter("dtValidade"));
            String idCartao = request.getParameter("idCartao");

            CartaoDeCredito cartao = new CartaoDeCredito();

            cartao.setId(Long.parseLong(idCartao));
            cartao.setNumCartao(numCartao);
            cartao.setBandeira(bandeira);
            cartao.setCodigo(codigoCartao);
            cartao.setNomeImpressoCartao(nomeCartao);
            cartao.setDataValidade(dtValidade);

            Cliente cliente = new Cliente();
            Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
            cliente.setUsuario(usuario);

            cartao.setCliente(cliente);

            return cartao;
        } else if(operacao.equals("remover")) {
            String idCartao = request.getParameter("idCartao");

            CartaoDeCredito cartaoDeCredito = new CartaoDeCredito();
            cartaoDeCredito.setId(Long.parseLong(idCartao));

            return cartaoDeCredito;
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
        request.setAttribute("aba", "cartoes");

        if(result.getMsg() == null) {
            request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, httpResponse);
        } else {
            String msgErro[] = result.getMsg().split("\n");

            request.setAttribute("mensagem", msgErro);
            request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, httpResponse);
        }
    }
}
