package controller.strategy.impl.cliente;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.cliente.Cliente;

public class VerificarEmailStrategy implements IStrategy {
    @Override
    public String processa(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;


        String email = cliente.getUsuario().getEmail();

        if(email.trim().isEmpty()) {
            return "Insira um email válido";
        }

        if (!email.contains("@") || !email.endsWith(".com")) {
            return "Insira um email válido";
        }


        return null;
    }
}
