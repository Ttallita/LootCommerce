package controller;

import dao.ClienteDAO;
import dao.IDAO;
import model.Cliente;
import model.Endereco;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;


public class ClienteTest {

    @Test
    public void testeFacade() {
        List<String> telefones = new ArrayList<>();
        telefones.add("4002-8922");
        telefones.add("91093-1234");

        Endereco endereco = new Endereco();
        endereco.setBairro("Castro Alves");
        endereco.setComplemento("Casa");
        endereco.setEstado("São Paulo");
        endereco.setCidade("São Paulo");
        endereco.setNumero(123);
        endereco.setLogradouro("Rua 25 de março");

        Cliente cliente = new Cliente();
        cliente.setNome("Tallita");
        cliente.setCpf("123.456.789-10");
        cliente.setRg("11.121.314-1");
        cliente.setTelefone(telefones);
        cliente.setEndereco(endereco);

        IDAO dao = new ClienteDAO();

        assertEquals(true, dao.salvar(cliente));

    }


}
