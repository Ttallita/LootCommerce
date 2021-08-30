package controller.strategy.impl.cliente;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.Usuario;
import model.cliente.Cliente;

public class VerificarEmailStrategy implements IStrategy {
    @Override
    public String processa(EntidadeDominio entidade) {

        String nomeClasse = entidade.getClass().getSimpleName();

        String email = "";

        System.out.println(nomeClasse);

        if(nomeClasse.equals("Cliente")) {
            Cliente cliente = (Cliente) entidade;
            email = cliente.getUsuario().getEmail();

        } else  {
            Usuario usuario = (Usuario) entidade;
            email = usuario.getEmail();
        }

        if(email.trim().isEmpty()) {
            return "Insira um email válido";
        }

        if (!email.contains("@") || !email.endsWith(".com")) {
            return "Insira um email válido";
        }


        return null;
    }
}
