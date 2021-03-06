package controller.strategy.impl.cliente;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.cliente.Cliente;

public class VerificarClienteStrategy implements IStrategy {

    @Override
    public String processa(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;

        if(cliente.getNome().trim().isEmpty()) {
            return "Digite um nome válido";
        }


        if(cliente.getSobrenome().trim().isEmpty()) {
            return "Digite um sobrenome válido";
        }

        if(cliente.getGenero().equals("Selecione")) {
            return "Escolha um gênero valído";
        }

        if(cliente.getTelefone().getTipo().equals("")) {
            return "Escolha um tipo de telefone válido";
        }

        if(cliente.getTelefone().getNumero().length() < 10) {
            return "Digite um telefone válido";
        }

        return null;
    }
}
