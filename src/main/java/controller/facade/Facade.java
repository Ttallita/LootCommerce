package controller.facade;

import dao.ClienteDAO;
import dao.IDAO;
import model.Result;
import model.EntidadeDominio;
import model.cliente.Cliente;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Facade implements IFacade {

    private Map<String, IDAO> daosMap;


    private Result result;

    public Facade() {
        daosMap = new HashMap<>();

        daosMap.put(Cliente.class.getName(), new ClienteDAO());
    }


    @Override
    public Result salvar(EntidadeDominio entidade) {
        result = new Result();

        String classe = entidade.getClass().getName();

        IDAO dao = daosMap.get(classe);

        dao.salvar(entidade);

        List<EntidadeDominio> entidades = new ArrayList<>();
        entidades.add(entidade);

        result.setEntidades(entidades);

        return result;
    }

    @Override
    public Result atualizar(EntidadeDominio entidade) {
        return null;
    }

    @Override
    public Result deletar(EntidadeDominio entidade) {
        return null;
    }

    @Override
    public Result listar(EntidadeDominio entidade) {
        return null;
    }
}
