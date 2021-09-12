package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
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

public class CartaoDeCreditoViewHelper implements IViewHelper {

    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String numCartao = request.getParameter("numCartao");
            String bandeira = request.getParameter("bandeira");
            int codigoCartao = Integer.parseInt(request.getParameter("codigoCartao"));
            String nomeCartao = request.getParameter("nomeCartao");
            LocalDate dtValidade = LocalDate.parse(request.getParameter("dtValidade"));

            CartaoDeCredito cartao = new CartaoDeCredito();

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

    }
}
