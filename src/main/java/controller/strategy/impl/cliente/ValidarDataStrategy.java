package controller.strategy.impl.cliente;

import controller.strategy.IStrategy;
import model.EntidadeDominio;
import model.cliente.Cliente;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class ValidarDataStrategy implements IStrategy {

    @Override
    public String processa(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;

        LocalDate data = cliente.getDataNascimento();


        if(data == null) {
            return "Insira uma data valida";
        }


        LocalDate dataAgora = LocalDate.now();

        if(data.isAfter(dataAgora)) {
            return "Digite uma data valida";
        }

        return null;
    }
}
