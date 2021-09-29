package controller.viewHelper.impl.model.adm;

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

public class CartaoDeCreditoAdminViewHelper implements IViewHelper {

    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String id_cliente = request.getParameter("idCliente");
            String numCartao = request.getParameter("numCartao");
            String bandeira = request.getParameter("bandeira");
            int codigoCartao = Integer.parseInt(request.getParameter("codigoCartao"));
            String nomeCartao = request.getParameter("nomeCartao");
            int mesValidade = Integer.parseInt(request.getParameter("mesValidade"));
            int anoValidade = Integer.parseInt(request.getParameter("anoValidade"));

            CartaoDeCredito cartao = new CartaoDeCredito();

            cartao.setNumCartao(numCartao);
            cartao.setBandeira(bandeira);
            cartao.setCodigo(codigoCartao);
            cartao.setNomeImpressoCartao(nomeCartao);
            cartao.setMesValidade(mesValidade);
            cartao.setAnoValidade(anoValidade);
            cartao.setCliente(new Cliente());
            cartao.getCliente().setUsuario(new Usuario());
            cartao.getCliente().getUsuario().setId(Long.parseLong(id_cliente));

            return cartao;
        } else if (operacao.equals("atualizar")) {
            String id_cartao = request.getParameter("idCartao");
            String numCartao = request.getParameter("numCartao");
            String bandeira = request.getParameter("bandeira");
            int codigoCartao = Integer.parseInt(request.getParameter("codigoCartao"));
            String nomeCartao = request.getParameter("nomeCartao");
            int mesValidade = Integer.parseInt(request.getParameter("mesValidade"));
            int anoValidade = Integer.parseInt(request.getParameter("anoValidade"));

            CartaoDeCredito cartao = new CartaoDeCredito();

            cartao.setId(Long.parseLong(id_cartao));
            cartao.setNumCartao(numCartao);
            cartao.setBandeira(bandeira);
            cartao.setCodigo(codigoCartao);
            cartao.setNomeImpressoCartao(nomeCartao);
            cartao.setMesValidade(mesValidade);
            cartao.setAnoValidade(anoValidade);

            return cartao;
        } else {
            Long id = Long.parseLong(request.getParameter("idCliente"));

            CartaoDeCredito cartaoDeCredito = new CartaoDeCredito();
            cartaoDeCredito.setId(id);

            return cartaoDeCredito;
        }
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) throws IOException, ServletException {

    }
}
