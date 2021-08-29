package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
import model.cliente.CartaoDeCredito;

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

            return cartao;
        }
        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) throws IOException, ServletException {

    }
}
