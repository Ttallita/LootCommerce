package dao;

import model.EntidadeDominio;
import model.IEntidade;

import java.util.List;

public interface IDAO {

    public abstract boolean salvar(EntidadeDominio entidade);
    public abstract boolean atualizar(EntidadeDominio entidade);
    public abstract boolean deletar(EntidadeDominio entidade);
    public abstract List<IEntidade> listar();

}
