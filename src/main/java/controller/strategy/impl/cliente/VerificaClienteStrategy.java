package controller.strategy.impl.cliente;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.cliente.Cliente;

public class VerificaClienteStrategy implements IStrategy {

    @Override
    public String processa(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;

        if(cliente.getUsuario().getNome().trim().isEmpty()) {
            return "Digite um nome válido";
        }


        if(cliente.getUsuario().getNome().split(" ").length < 2) {
            return "Digite um sobrenome";
        }

        if(cliente.getGenero().equals("Selecione")) {
            return "Escolha um gênero valído";
        }

        if(cliente.getTelefone().getTipo().equals("Selecione")) {
            return "Escolha um tipo de telefone válido";
        }

        if(cliente.getTelefone().getNumero().length() < 10) {
            return "Digite um telefone válido";
        }

        return null;
    }
}
