package dao.cliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.IDAO;
import model.EntidadeDominio;
import model.cliente.CartaoDeCredito;
import model.cliente.Cliente;
import utils.Conexao;

public class CartaoDeCreditoDAO implements IDAO {

    private Connection conn;

    @Override
    public EntidadeDominio salvar(EntidadeDominio entidade) {
        CartaoDeCredito cartao = (CartaoDeCredito) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO cartoes ( crt_cli_usr_id, crt_numero, crt_bandeira, crt_mes_validade, crt_ano_validade, crt_nome_impresso, crt_cod_seg)"
                    + " VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, cartao.getCliente().getUsuario().getId());
            pstm.setString(2, cartao.getNumCartao());
            pstm.setString(4, cartao.getBandeira());
            pstm.setInt(5, cartao.getMesValidade());
            pstm.setInt(6, cartao.getAnoValidade());
            pstm.setString(7, cartao.getNomeImpressoCartao());
            pstm.setString(8, String.valueOf(cartao.getCodigo()));

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long idCartao = 0L;

            while (rs.next()) {
                idCartao = rs.getLong(1);
            }

            cartao.setId(idCartao);

            return cartao;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }

    @Override
    public EntidadeDominio atualizar(EntidadeDominio entidade) {
        CartaoDeCredito cartao = (CartaoDeCredito) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "UPDATE cartoes " +
                    "SET crt_numero = ?, crt_bandeira = ?, crt_mes_validade = ?, crt_ano_validade = ?, crt_nome_impresso = ?, crt_cod_seg = ? " +
                    "WHERE crt_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, cartao.getNumCartao());
            pstm.setString(2, cartao.getBandeira());
            pstm.setInt(3, cartao.getMesValidade());
            pstm.setInt(4, cartao.getAnoValidade());
            pstm.setString(5, cartao.getNomeImpressoCartao());
            pstm.setString(6, String.valueOf(cartao.getCodigo()));
            pstm.setLong(7, cartao.getId());


            List<EntidadeDominio> cliente = new ClienteDAO().listar(cartao.getCliente(), "listar");

            cartao.setCliente((Cliente) cliente);

            pstm.execute();

            return cartao;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }

    @Override
    public EntidadeDominio deletar(EntidadeDominio entidade) {
        CartaoDeCredito cartaoDeCredito = (CartaoDeCredito) entidade;
        Conexao conexao = new Conexao();
        try {
            conn = conexao.getConexao();

            String sql = "DELETE FROM cartoes WHERE crt_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, cartaoDeCredito.getId());

            List<EntidadeDominio> cliente = new ClienteDAO().listar(cartaoDeCredito.getCliente(), "listar");
            cartaoDeCredito.setCliente((Cliente) cliente);

            pstm.execute();

            return cartaoDeCredito;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
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
                cartaoCliente.setMesValidade(Integer.parseInt(rs.getString("crt_cod_seg")));
                cartaoCliente.setAnoValidade(Integer.parseInt(rs.getString("crt_cod_seg")));
                cartaoCliente.setNomeImpressoCartao(rs.getString("crt_nome_impresso"));
                cartaoCliente.setNumCartao(rs.getString("crt_numero"));

                cartoes.add(cartaoCliente);
            }

            return cartoes;

        }catch (Exception e) {
            System.err.println("Cart??o de Cr??dito erro: " + e.getMessage());
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }

}
