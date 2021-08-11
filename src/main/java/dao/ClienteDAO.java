package dao;

import model.cliente.Cliente;
import model.Entidade;
import utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public class ClienteDAO implements IDAO{
    private Connection conn;

    @Override
    public boolean salvar(Entidade entidade) {
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
    public boolean atualizar(Entidade entidade) {
        return false;
    }

    @Override
    public boolean deletar(Entidade entidade) {
        return false;
    }

    @Override
    public List<Entidade> listar() {
        return null;
    }
}
