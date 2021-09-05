package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
import model.cliente.Endereco;
import model.cliente.EnderecoType;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

                if(tpEndereco.contains("Cobrança")) {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA);
                } else if(tpEndereco.contains("Entrega")) {
                    endereco.setTipoEndereco(EnderecoType.ENTREGA);
                } else {
                    endereco.setTipoEndereco(EnderecoType.COBRANCA_ENTREGA);
                }
            }

            return endereco;
        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) {

    }
}
