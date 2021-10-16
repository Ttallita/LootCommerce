package dao.localidades;

import model.cliente.endereco.Pais;
import utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PaisDAO {
    Connection conn;

    public List<Pais> listar() {
        Conexao conexao = new Conexao();
        try {
            conn = conexao.getConexao();

            String sql = "SELECT * FROM paises ORDER BY pai_nome";

            PreparedStatement pstm = conn.prepareStatement(sql);

            ResultSet rs = pstm.executeQuery();

            List<Pais> paises = new ArrayList<>();

            while (rs.next()) {
                Pais pais = new Pais();
                pais.setId(rs.getLong("pai_id"));
                pais.setNome(rs.getString("pai_nome"));
                pais.setSigla(rs.getString("pai_sigla"));
                pais.setBacen(rs.getDouble("pai_bacen"));

                pais.setEstados(new EstadoDAO(conn).listarEstadoPorPais(pais.getId()));

                paises.add(pais);
            }

            return paises;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
            return null;
        } finally {
            conexao.fecharConexao(conn);
        }
    }
}
