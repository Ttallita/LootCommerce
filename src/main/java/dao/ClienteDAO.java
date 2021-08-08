package dao;

import model.Cliente;
import model.Entidade;
import utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class ClienteDAO implements IDAO{
    private Connection conn;

    @Override
    public boolean salvar(Entidade entidade) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql  = "INSERT INTO clientes (nome,rg, cpf, logradouro, numero, complemento, bairro, cidade, estado)" +
                    " VALUES(? ,?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1,cliente.getNome());
            pstm.setString(2,cliente.getRg());
            pstm.setString(3,cliente.getCpf());
            pstm.setString(4,cliente.getEndereco().getLogradouro());
            pstm.setInt(5,cliente.getEndereco().getNumero());
            pstm.setString(6, cliente.getEndereco().getComplemento());
            pstm.setString(7, cliente.getEndereco().getBairro());
            pstm.setString(8, cliente.getEndereco().getCidade());
            pstm.setString(9, cliente.getEndereco().getEstado());


            pstm.execute();

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
