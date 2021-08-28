package dao;

import model.EntidadeDominio;
import model.IEntidade;
import model.Usuario;
import utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class UsuarioDAO implements IDAO{

    private Connection conn;

    @Override
    public Long salvar(EntidadeDominio entidade) {
        Usuario usuario = (Usuario) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO usuarios (usr_prim_nome, usr_ult_nome, usr_email, usr_senha, usr_tipo)" +
                    "VALUES (?, ?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setString(1, usuario.getNome().split(" ")[0]);
            pstm.setString(2, usuario.getNome().split(" ")[1]);
            pstm.setString(3, usuario.getEmail());
            pstm.setString(4, usuario.getSenha());
            pstm.setString(5, usuario.getTipoUsuario().toString());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long idUser = 0L;

            while (rs.next()){
                idUser = rs.getLong(1);
            }

            return idUser;

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
    public List<IEntidade> listar() {
        return null;
    }
}
