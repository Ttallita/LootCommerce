package dao;

import model.IEntidade;
import model.cliente.Cliente;
import model.EntidadeDominio;
import utils.Conexao;

import java.sql.Connection;
import java.util.List;

public class ClienteDAO implements IDAO{
    private Connection conn;

    @Override
    public boolean salvar(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();




            //pstm.execute();

            return true;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            return false;
        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public boolean atualizar(EntidadeDominio entidade) {
        return false;
    }

    @Override
    public boolean deletar(EntidadeDominio entidade) {
        return false;
    }

    @Override
    public List<IEntidade> listar() {
        return null;
    }
}
