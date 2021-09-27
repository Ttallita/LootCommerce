package dao;

import model.cliente.endereco.Estado;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EstadoDAO {
    Connection conn;

    public EstadoDAO(Connection conn) {
        this.conn = conn;
    }

    public List<Estado> listarEstadoPorPais(Long id) {
        try {

            String sql = "SELECT * FROM estados WHERE etd_pai_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, id);

            ResultSet rs = pstm.executeQuery();

            List<Estado> estados = new ArrayList<>();

            while (rs.next()) {
                Estado estado = new Estado();
                estado.setId(rs.getLong("etd_id"));
                estado.setNome(rs.getString("etd_nome"));
                estado.setUf(rs.getString("etd_uf"));
                estado.setIbge(rs.getInt("etd_ibge"));
                estado.setDdd(rs.getString("etd_ddd"));

                estado.setCidades(new CidadeDAO(conn).listarCidadesPorEstado(estado.getId()));

                estados.add(estado);
            }

            return estados;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
}
