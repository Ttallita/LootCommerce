package dao;

import model.cliente.endereco.Cidade;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CidadeDAO {

    Connection conn;

    public CidadeDAO(Connection conn) {
        this.conn = conn;
    }

    public List<Cidade> listarCidadesPorEstado(Long id) {
        try {

            String sql = "SELECT * FROM municipios WHERE mnc_etd_id  = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setLong(1, id);

            ResultSet rs = pstm.executeQuery();

            List<Cidade> cidades = new ArrayList<>();

            while (rs.next()) {
                Cidade cidade = new Cidade();
                cidade.setId(rs.getLong("mnc_id"));
                cidade.setNome(rs.getString("mnc_nome"));
                cidade.setIbge(rs.getDouble("mnc_cod_ibge"));

                cidades.add(cidade);
            }

            return cidades;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

}
