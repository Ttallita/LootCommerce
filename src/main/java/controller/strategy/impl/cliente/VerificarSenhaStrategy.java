package controller.strategy.impl.cliente;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.Usuario;
import model.cliente.Cliente;

public class VerificarSenhaStrategy implements IStrategy {

    @Override
    public String processa(EntidadeDominio entidade) {

        String nomeClasse = entidade.getClass().getName();

        String senha = "";

        if(nomeClasse.equals("Cliente")) {
            Cliente cliente = (Cliente) entidade;
            senha = cliente.getUsuario().getSenha();

        } else  {
            Usuario usuario = (Usuario) entidade;
            senha = usuario.getSenha();
        }

        String caracteresEspeciais = "!@#$%&*()'+,-./:;<=>?[]^_`{|}";

        boolean tamanho = false;
        boolean maiscula = false;
        boolean minuscula = false;
        boolean especial = false;

        if(senha.trim().length() > 7) {
            tamanho = true;
        }

        char letrasSenha[] = senha.toCharArray();


        for (int i = 0; i < letrasSenha.length; i++) {
            if(Character.isUpperCase(letrasSenha[i]))
                maiscula = true;

            if(Character.isLowerCase(letrasSenha[i]))
                minuscula = true;

            if(caracteresEspeciais.contains(Character.toString(letrasSenha[i])));
                especial = true;

        }

        if(!maiscula || !minuscula || !especial || !tamanho) {
            return "Senha inválida";
        }


        return null;
    }
}
