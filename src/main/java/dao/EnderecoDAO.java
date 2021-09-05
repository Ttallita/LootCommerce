package dao;

import model.EntidadeDominio;
import model.cliente.Endereco;
import model.cliente.EnderecoType;
import utils.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EnderecoDAO implements IDAO{

    private Connection conn;

    @Override
    public Long salvar(EntidadeDominio entidade) {
        Endereco endereco = (Endereco) entidade;

        Conexao conexao = new Conexao();
        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO enderecos (end_cli_usr_id, end_tp, end_nome, end_tp_logradouro, end_logradouro, end_num, end_bairro, end_cep, end_cidade, end_estado, end_pais, end_observacao)" +
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
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        Endereco endereco = (Endereco) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            List<EntidadeDominio> enderecos = new ArrayList<>();

            if(operacao.equals("listarPorCliente")) {
                sql = "select * from enderecos" +
                        " inner join enderecos_cliente" +
                        " on ecl_end_id = end_id" +
                        " where ecl_cli_id = ?";
            }

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, endereco.getCliente().getId());

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                Endereco enderecoCliente = new Endereco();
                enderecoCliente.setId(rs.getLong("end_id"));
                enderecoCliente.setApelido(rs.getString("end_nome"));
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
            System.err.println(e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }
}
