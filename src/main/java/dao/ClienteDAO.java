package dao;

import model.IEntidade;
import model.Usuario;
import model.cliente.Cliente;
import model.EntidadeDominio;
import model.cliente.Endereco;
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

            String sql = "INSERT INTO clientes (cli_usr_id, cli_cpf, cli_dt_nasc, cli_genero, cli_telefone_num, cli_telefone_ddd, cli_telefone_tp)" +
                    " VALUES (?, ?, ?, ?, ?, ?, ?)";

            Usuario usuario = cliente.getUsuario();
            Endereco endereco = cliente.getEndereco();

            Long idUser = new UsuarioDAO().salvar(usuario);
            Long idEndereco = new EnderecoDAO().salvar(endereco);

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, idUser);
            pstm.setString(2, cliente.getCpf());
            pstm.setDate(3, Date.valueOf(cliente.getDataNascimento()));
            pstm.setString(4, cliente.getGenero());
            pstm.setString(5, cliente.getTelefone().getNumero());
            pstm.setString(6, cliente.getTelefone().getDdd());
            pstm.setString(7, cliente.getTelefone().getTipo());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long idCliente = 0L;

            while (rs.next()) {
                idCliente = rs.getLong(1);
            }

            sql = "INSERT INTO enderecos_cliente (ecl_end_id, ecl_cli_id)" +
                    "VALUES (?, ?)";


            pstm = conn.prepareStatement(sql);

            pstm.setLong(1, idEndereco);
            pstm.setLong(2, idCliente);

            pstm.execute();

            return idCliente;
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
