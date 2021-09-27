package controller.strategy.impl.endereco;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.cliente.Cliente;
import model.cliente.endereco.Endereco;

public class VerificarEnderecoStrategy implements IStrategy {

    @Override
    public String processa(EntidadeDominio entidade) {
        Endereco endereco;

        if(entidade.getClass().getSimpleName().equals("Cliente")) {
            Cliente cliente = (Cliente) entidade;
            endereco = cliente.getEnderecos().get(0);

        } else {
            endereco = (Endereco) entidade;
        }

        if(endereco.getTipoResidencia().trim().isEmpty()) {
            return "Escolha um tipo de residência valido";
        }

        if(endereco.getTipoLogradouro().trim().isEmpty()) {
            return "Escolha um tipo de logradouro válido";
        }

        if(endereco.getLogradouro().trim().isEmpty()) {
            return "Digite um logradouro válido";
        }

        if(Integer.valueOf(endereco.getNumero()) == null) {
            return "Digite um numero de endereço válido";
        }

        if(endereco.getBairro().trim().isEmpty()) {
            return "Digite um bairro válido";
        }

        if(endereco.getCep().trim().isEmpty()) {
            return "Digite um cep válido";
        }

        if(endereco.getCidade().trim().isEmpty()) {
            return "Escolha uma cidade válida";
        }

        if(endereco.getEstado().trim().isEmpty()) {
            return "Escolha um estado válido";
        }

        if(endereco.getPais().trim().isEmpty()) {
            return "Escolha um pais válido";
        }

        if(endereco.getTipoEndereco() == null) {
            return "Escolha um tipo de endereço valido";
        }

        if(endereco.getApelido().trim().isEmpty()) {
            return "Digite um apelido para o endereço valido";
        }

        return null;
    }
}
