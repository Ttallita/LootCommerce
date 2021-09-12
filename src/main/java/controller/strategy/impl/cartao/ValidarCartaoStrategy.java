package controller.strategy.impl.cartao;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.cliente.CartaoDeCredito;
import net.bytebuddy.implementation.bytecode.StackSize;

import java.time.LocalDate;

public class ValidarCartaoStrategy implements IStrategy {

    @Override
    public String processa(EntidadeDominio entidade) {
        CartaoDeCredito cartao = (CartaoDeCredito) entidade;

        if(cartao.getNumCartao().trim().isEmpty()
                || cartao.getNumCartao().length() < 16
                || cartao.getNumCartao().length() > 16) {
            return "Número de cartão inválido";
        }

        if(cartao.getNomeImpressoCartao().trim().isEmpty()) {
            return "Nome de cartão inválido";
        }

        if(cartao.getBandeira().trim().isEmpty()) {
            return "Bandeira do cartão inválida";
        }

        if(String.valueOf(cartao.getCodigo()).trim().isEmpty()
            || String.valueOf(cartao.getCodigo()).length() > 3
            || String.valueOf(cartao.getCodigo()).length() < 3) {
            return "Código de cartão inválido";
        }

        if(cartao.getDataValidade().isBefore(LocalDate.now())) {
            return "Data de válidade do cartão inválida";
        }


        return null;
    }
}
