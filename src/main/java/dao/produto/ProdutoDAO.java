package dao.produto;

import dao.IDAO;
import model.EntidadeDominio;
import model.produto.Produto;
import utils.Conexao;

import java.sql.*;
import java.util.List;

public class ProdutoDAO implements IDAO {

    private Connection conn;

    @Override
    public EntidadeDominio salvar(EntidadeDominio entidade) {
        Produto produto = (Produto) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO produtos (pro_fab_id, pro_grp_id, pro_pst_id, pro_nome, pro_valor_compra, pro_valor_venda, pro_quant_estoque, pro_limite_venda, pro_descricao, pro_material, pro_cod_barras, pro_dt_entrada_estoque, pro_limitado)" +
                    " VALUES (?, ?, 1, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_DATE, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, produto.getFabricante().getId());
            pstm.setLong(2, produto.getGrupoPrecificacao().getId());
            pstm.setLong(3, produto.getStatus().getId());
            pstm.setString(4, produto.getNome());
            pstm.setDouble(5, produto.getValorCompra());
            pstm.setDouble(6, produto.getValorVenda());
            pstm.setInt(7, produto.getQuantEstoque());
            pstm.setInt(8, produto.getLimiteVenda());
            pstm.setString(9, produto.getDescricao());
            pstm.setString(10, produto.getMaterial());
            pstm.setString(11, produto.getCodBarras());
            pstm.setBoolean(13, produto.getLimitado());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long produtoId = 0L;

            while (rs.next()) {
                produtoId = rs.getLong(1);
            }

            return produto;
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
        return null;
    }
}
