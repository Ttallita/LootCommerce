package dao;

import model.EntidadeDominio;
import model.IEntidade;
import model.Usuario;
import model.cliente.Cliente;
import model.cliente.Endereco;
import utils.Conexao;

import java.sql.*;
import java.util.List;

public class EnderecoDAO implements IDAO{

    private Connection conn;

    @Override
    public Long salvar(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        Endereco endereco = cliente.getEndereco();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO enderecos (end_tipo, end_nome, end_tp_logradouro, end_logradouro, end_num, end_bairro, end_cep, end_cidade, end_estado, end_pais, end_observacao)" +
                    " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            Usuario usuario = cliente.getUsuario();

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setString(1, endereco.getTipoEndereco().toString());
            pstm.setString(2, endereco.getApelido());
            pstm.setString(3, endereco.getTipoLogradouro());
            pstm.setString(4, endereco.getLogradouro());
            pstm.setInt(5, endereco.getNumero());
            pstm.setString(6, endereco.getBairro());
            pstm.setString(7, endereco.getCep());
            pstm.setString(8, endereco.getCidade());
            pstm.setString(9, endereco.getEstado());
            pstm.setString(10, endereco.getPais());
            pstm.setString(11, endereco.getObservacoes());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long enderecoId = 0L;

            while (rs.next()) {
                enderecoId = rs.getLong(1);
            }



            return enderecoId;
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
