package dao;

import model.EntidadeDominio;
import model.cliente.endereco.Endereco;
import model.cliente.endereco.EnderecoType;
import utils.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EnderecoDAO implements IDAO{

    private Connection conn;

    @Override
    public EntidadeDominio salvar(EntidadeDominio entidade) {
        Endereco endereco = (Endereco) entidade;

        Conexao conexao = new Conexao();
        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO enderecos (end_cli_usr_id, end_tp, end_apelido, end_tp_logradouro, end_logradouro, end_num, end_bairro, end_cep, end_cidade, end_estado, end_pais, end_observacao)" +
                    " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1,endereco.getCliente().getId());
            pstm.setString(2, endereco.getTipoEndereco().toString());
            pstm.setString(3, endereco.getApelido());
            pstm.setString(4, endereco.getTipoLogradouro());
            pstm.setString(5, endereco.getLogradouro());
            pstm.setInt(6, endereco.getNumero());
            pstm.setString(7, endereco.getBairro());
            pstm.setString(8, endereco.getCep());
            pstm.setString(9, endereco.getCidade());
            pstm.setString(10, endereco.getEstado());
            pstm.setString(11, endereco.getPais());
            pstm.setString(12, endereco.getObservacoes());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long enderecoId = 0L;

            while (rs.next()) {
                enderecoId = rs.getLong(1);
            }

            return endereco;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public EntidadeDominio atualizar(EntidadeDominio entidade) {
        Endereco endereco = (Endereco) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "UPDATE enderecos " +
                    "SET end_tp = ?, end_apelido = ?, end_tp_logradouro = ?, end_logradouro = ?, end_num = ?, end_bairro = ?, end_cep = ?, end_cidade = ?, end_estado = ?, end_pais = ?, end_observacao = ? " +
                    "WHERE end_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);

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
            pstm.setLong(12, endereco.getId());

            pstm.execute();

            return endereco;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public EntidadeDominio deletar(EntidadeDominio entidade) {
        Endereco endereco = (Endereco) entidade;
        Conexao conexao = new Conexao();
        try {
            conn = conexao.getConexao();

            String sql = "DELETE FROM enderecos WHERE end_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, endereco.getId());

            pstm.execute();

            return endereco;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return endereco;
        }finally {
            conexao.fecharConexao(conn);
        }
    }

    @Override
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        Endereco endereco = (Endereco) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            List<EntidadeDominio> enderecos = new ArrayList<>();

            if(operacao.equals("listarPorCliente")) {
                sql = "select * from enderecos" +
                        " where end_cli_usr_id = ?";
            }

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, endereco.getCliente().getId());

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                Endereco enderecoCliente = new Endereco();
                enderecoCliente.setId(rs.getLong("end_id"));
                enderecoCliente.setApelido(rs.getString("end_apelido"));
                enderecoCliente.setTipoLogradouro(rs.getString("end_tp_logradouro"));
                enderecoCliente.setLogradouro(rs.getString("end_logradouro"));
                enderecoCliente.setNumero(Integer.parseInt(rs.getString("end_num")));
                enderecoCliente.setBairro(rs.getString("end_bairro"));
                enderecoCliente.setCep(rs.getString("end_cep"));
                enderecoCliente.setCidade(rs.getString("end_cidade"));
                enderecoCliente.setEstado(rs.getString("end_estado"));
                enderecoCliente.setPais(rs.getString("end_pais"));
                enderecoCliente.setObservacoes(rs.getString("end_observacao"));

                String tpEndereco = rs.getString("end_tp");
                EnderecoType enderecoType;

                if (tpEndereco.equals("COBRANCA")) {
                    enderecoType = EnderecoType.COBRANCA;
                } else if (tpEndereco.equals("ENTREGA")) {
                    enderecoType = EnderecoType.ENTREGA;
                } else {
                    enderecoType = EnderecoType.COBRANCA_ENTREGA;
                }

                enderecoCliente.setTipoEndereco(enderecoType);


                enderecos.add(enderecoCliente);
            }

            return enderecos;

        }catch (Exception e) {
            System.err.println("Endereço error : " + e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }
}
