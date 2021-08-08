package controller;

import dao.ClienteDAO;
import dao.IDAO;
import model.Cliente;
import model.Entidade;

import java.util.List;

public class FacadeCliente implements IFacade{


    @Override
    public void salvar(Entidade entidade) {
        Cliente cliente = (Cliente) entidade;

        IDAO dao = new ClienteDAO();


        dao.salvar(cliente);
    }

    @Override
    public void atualizar(Entidade entidade) {

    }

    @Override
    public void deletar(Entidade entidade) {

    }

    @Override
    public List<Entidade> listar() {
        return null;
    }
}
