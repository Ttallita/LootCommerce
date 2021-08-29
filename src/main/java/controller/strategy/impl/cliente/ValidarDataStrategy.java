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

        String data = cliente.getDataNascimento();

        if(data.trim().isEmpty()) {
            return "Insira uma data valida";
        }

        LocalDate dataSemFormatacao = LocalDate.parse(data);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        String dataFormatada = dtf.format(dataSemFormatacao);

        LocalDate date = LocalDate.parse(dataFormatada, dtf);

        LocalDate dataAgora = LocalDate.now();

        if(date.isAfter(dataAgora)) {
            return "Digite uma data valida";
        }

        return null;
    }
}
