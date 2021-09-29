package controller.viewHelper.impl.model.adm;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
import model.cliente.Cliente;
import model.cupom.Cupom;
import model.cupom.CupomType;

public class CupomAdminViewHelper implements IViewHelper{

    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String idCliente = request.getParameter("idCliente");
            String nome = request.getParameter("nome");
            Double valor = Double.parseDouble(request.getParameter("vlrCupom"));
            String dataValidade = request.getParameter("validade");
            String descricao = request.getParameter("descricaoCupom");

            Cupom cupom = new Cupom();

            cupom.setNome(nome);
            cupom.setValor(valor);
            cupom.setDataValidade(LocalDate.parse(dataValidade, DateTimeFormatter.ISO_LOCAL_DATE));
            cupom.setDescricao(descricao);
            cupom.setCliente(new Cliente());
            cupom.getCliente().setId(Long.parseLong(idCliente));

            String tpCupom = request.getParameter("tpCupom");

            if(tpCupom.equals("Promocional")) {
                cupom.setTipo(CupomType.PROMOCIONAL);
            } else if(tpCupom.equals("Troca")) {
                cupom.setTipo(CupomType.TROCA);
            } else {
                cupom.setTipo(CupomType.CANCELAMENTO);
            }

            return cupom;
        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) throws IOException, ServletException {
        
    }
    
}
