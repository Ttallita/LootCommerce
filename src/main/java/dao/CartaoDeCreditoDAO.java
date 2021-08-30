package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import model.EntidadeDominio;
import model.IEntidade;
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
            pstm.setLong(1, 1);
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
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public boolean deletar(EntidadeDominio entidade) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        return null;
    }
}
