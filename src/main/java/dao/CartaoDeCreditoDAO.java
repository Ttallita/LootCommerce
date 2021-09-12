package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import model.EntidadeDominio;
import model.cliente.CartaoDeCredito;
import utils.Conexao;

public class CartaoDeCreditoDAO implements IDAO {

    private Connection conn;

    @Override
    public Long salvar(EntidadeDominio entidade) {
        CartaoDeCredito cartao = (CartaoDeCredito) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO cartoes ( crt_cli_usr_id, crt_numero, crt_bandeira, crt_dt_validade, crt_nome_impresso, crt_cod_seg)"
                    + " VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, cartao.getCliente().getUsuario().getId());
            pstm.setString(2, cartao.getNumCartao());
            pstm.setString(3, cartao.getBandeira());
            pstm.setDate(4, Date.valueOf(cartao.getDataValidade()));
            pstm.setString(5, cartao.getNomeImpressoCartao());
            pstm.setString(6, String.valueOf(cartao.getCodigo()));

            pstm.execute();

            return 1l;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }

    @Override
    public boolean atualizar(EntidadeDominio entidade) {
        return false;
    }

    @Override
    public boolean deletar(EntidadeDominio entidade) {
        CartaoDeCredito cartaoDeCredito = (CartaoDeCredito) entidade;
        Conexao conexao = new Conexao();
        try {
            conn = conexao.getConexao();

            String sql = "DELETE FROM cartoes WHERE crt_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, cartaoDeCredito.getId());

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
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        CartaoDeCredito cartao = (CartaoDeCredito) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            List<EntidadeDominio> cartoes = new ArrayList<>();

            if(operacao.equals("listarPorCliente")) {
                sql = "select * from cartoes" + 
                        " where crt_cli_usr_id = ?";
            }
            
            PreparedStatement pstm = conn.prepareStatement(sql);
            
            pstm.setLong(1, cartao.getCliente().getId());
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                CartaoDeCredito cartaoCliente = new CartaoDeCredito();
                cartaoCliente.setId(rs.getLong("crt_id"));
                cartaoCliente.setBandeira(rs.getString("crt_bandeira"));
                cartaoCliente.setCodigo(Integer.parseInt(rs.getString("crt_cod_seg")));
                cartaoCliente.setDataValidade(LocalDate.parse(rs.getString("crt_dt_validade")));
                cartaoCliente.setNomeImpressoCartao(rs.getString("crt_nome_impresso"));
                cartaoCliente.setNumCartao(rs.getString("crt_numero"));

                cartoes.add(cartaoCliente);
            }

            return cartoes;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }

}
