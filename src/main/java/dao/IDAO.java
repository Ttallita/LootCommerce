package dao;

import model.Entidade;

import java.util.List;

public interface IDAO {

    public abstract boolean salvar(Entidade entidade);
    public abstract boolean atualizar(Entidade entidade);
    public abstract boolean deletar(Entidade entidade);
    public abstract List<Entidade> listar();

}
