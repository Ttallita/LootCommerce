package controller;

import model.Entidade;

import java.util.List;

public interface IFacade {

    public abstract void salvar(Entidade entidade);
    public abstract void atualizar(Entidade entidade);
    public abstract void deletar(Entidade entidade);
    public abstract List<Entidade> listar();

}
