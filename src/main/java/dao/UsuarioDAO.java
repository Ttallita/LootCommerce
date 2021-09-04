package dao;

import model.EntidadeDominio;
import model.Usuario;
import model.UsuarioType;
import utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

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

        Usuario usuario = (Usuario) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "UPDATE usuarios SET usr_prim_nome = ?, usr_ult_nome = ?, usr_email = ?, usr_senha = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, usuario.getNome().split(" ")[0]);
            pstm.setString(2, usuario.getSobrenome().split(" ")[1]);
            pstm.setString(3, usuario.getEmail());
            pstm.setString(4, usuario.getSenha());
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
    public boolean deletar(EntidadeDominio entidade) {
        return false;
    }

    @Override
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        Usuario usuario = (Usuario) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            List<EntidadeDominio> entidadeDominios = new ArrayList<>();

            if(operacao.equals("login")) {
                sql = "SELECT * from usuarios where usr_email  = ? and usr_senha = ?";
            }

            PreparedStatement pstm = conn.prepareStatement(sql);

            if(operacao.equals("login")) {
                pstm.setString(1, usuario.getEmail());
                pstm.setString(2, usuario.getSenha());

                ResultSet rs = pstm.executeQuery();

                while (rs.next()) {
                    Usuario usuarioLogado = new Usuario();

                    usuarioLogado.setId(rs.getLong("usr_id"));
                    usuarioLogado.setEmail(rs.getString("usr_email"));
                    usuarioLogado.setTipoUsuario(rs.getString("usr_tipo").equals("CLIENTE") ? UsuarioType.CLIENTE : UsuarioType.ADMINISTRADOR);
                    usuarioLogado.setSenha(rs.getString("usr_senha"));
                    usuarioLogado.setNome(rs.getString("usr_prim_nome") + " " + rs.getString("usr_ult_nome"));

                    entidadeDominios.add(usuarioLogado);
                }

            }

            return entidadeDominios;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }
    }
}
