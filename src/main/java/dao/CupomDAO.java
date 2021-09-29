package dao;

import model.EntidadeDominio;
import model.cupom.Cupom;
import model.cupom.CupomType;
import utils.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CupomDAO implements IDAO{

    private Connection conn;

    @Override
    public EntidadeDominio salvar(EntidadeDominio entidade) {
        Cupom cupom = (Cupom) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO cupons (cpm_cli_usr_id, cpm_nome, cpm_tp, cpm_valor, cpm_dt_validade, cpm_descricao)" +
                    " VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, cupom.getCliente().getId());
            pstm.setString(2, cupom.getNome());
            pstm.setString(3, cupom.getTipo().toString());
            pstm.setDouble(4, cupom.getValor());
            pstm.setDate(5, Date.valueOf(cupom.getDataValidade()));
            pstm.setString(6, cupom.getDescricao());

            pstm.execute();

            return cupom;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public EntidadeDominio atualizar(EntidadeDominio entidade) {
        return null;
    }

    @Override
    public EntidadeDominio deletar(EntidadeDominio entidade) {
        return null;
    }

    @Override
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        Cupom cupom = (Cupom) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            List<EntidadeDominio> cupons = new ArrayList<>();

            if(operacao.equals("listarPorCliente")) {
                sql = "select * from cupons" +
                        " where cpm_cli_usr_id = ?";
            }

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, cupom.getCliente().getId());

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                Cupom cupomCliente = new Cupom();
                cupomCliente.setId(rs.getLong("cpm_id"));
                cupomCliente.setNome(rs.getString("cpm_nome"));
                cupomCliente.setValor(rs.getDouble("cpm_valor"));
                cupomCliente.setDataValidade((rs.getDate("cpm_dt_validade")).toLocalDate());
                cupomCliente.setDescricao(rs.getString("cpm_descricao"));

                String tpCupom = rs.getString("cpm_tp");
                CupomType cupomType;

                if (tpCupom.equals("PROMOCIONAL")) {
                    cupomType = CupomType.PROMOCIONAL;
                } else if (tpCupom.equals("TROCA")) {
                    cupomType = CupomType.TROCA;
                } else {
                    cupomType = CupomType.CANCELAMENTO;
                }

                cupomCliente.setTipo(cupomType);

                cupons.add(cupomCliente);
            }

            return cupons;

        }catch (Exception e) {
            System.err.println("Cupom error : " + e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }
}
