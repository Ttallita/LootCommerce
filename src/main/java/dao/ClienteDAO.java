package dao;

import model.IEntidade;
import model.Usuario;
import model.cliente.Cliente;
import model.EntidadeDominio;
import utils.Conexao;

import java.sql.*;
import java.util.List;

public class ClienteDAO implements IDAO{
    private Connection conn;

    @Override
    public Long salvar(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO clientes (cli_cpf, cli_dt_nasc, cli_genero, cli_telefone_num, cli_telefone_ddd, cli_telefone_tp)" +
                    " VALUES (?, ?, ?, ?, ?, ?)";

            Usuario usuario = cliente.getUsuario();

            Long idUser = new UsuarioDAO().salvar(usuario);

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setString(1, cliente.getCpf());
            pstm.setDate(2, Date.valueOf(cliente.getDataNascimento()));
            pstm.setString(3, cliente.getGenero());
            pstm.setString(4, cliente.getTelefone().getNumero());
            pstm.setString(5, cliente.getTelefone().getDdd());
            pstm.setString(6, cliente.getTelefone().getTipo());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long clienteId = 0L;

            while (rs.next()) {
                clienteId = rs.getLong(1);
            }

            return clienteId;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
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
