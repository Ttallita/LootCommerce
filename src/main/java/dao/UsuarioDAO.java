package dao;

import model.EntidadeDominio;
import model.Usuario;
import model.UsuarioType;
import model.cliente.Endereco;
import utils.Conexao;
import utils.Criptografia;

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
    public EntidadeDominio salvar(EntidadeDominio entidade) {
        Usuario usuario = (Usuario) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO usuarios (usr_email, usr_senha, usr_tipo, usr_ativo)" +
                    "VALUES (?, ?, ?, ?)";

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setString(1, usuario.getEmail());
            pstm.setString(2, Criptografia.getSha512(usuario.getSenha()));
            pstm.setString(3, usuario.getTipoUsuario().toString());
            pstm.setBoolean(4, usuario.isAtivo());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long idUser = 0L;

            while (rs.next()){
                idUser = rs.getLong(1);
            }

            usuario.setId(idUser);

            return usuario;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;

        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public EntidadeDominio atualizar(EntidadeDominio entidade) {
        Usuario usuario = (Usuario) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "UPDATE usuarios SET usr_email = ?, usr_senha = ?, usr_tipo = ?, usr_ativo = ? " +
                    "WHERE usr_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, usuario.getEmail());
            pstm.setString(2, Criptografia.getSha512(usuario.getSenha()));
            pstm.setString(3, usuario.getTipoUsuario().toString());
            pstm.setBoolean(4, usuario.isAtivo());
            pstm.setLong(5, usuario.getId());

            pstm.execute();

            return usuario;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;

        }finally {
            conexao.fecharConexao(conn);
        }
    }

    @Override
    public Endereco deletar(EntidadeDominio entidade) {
        return null;
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

            if(operacao.equals("listarAdm")) {
                sql = "SELECT * from usuarios where usr_id = ?";
            }

            PreparedStatement pstm = conn.prepareStatement(sql);

            if(operacao.equals("login")) {
                pstm.setString(1, usuario.getEmail());
                pstm.setString(2, Criptografia.getSha512(usuario.getSenha()));
            } else if(operacao.equals("listarAdm")) {
                pstm.setLong(1, usuario.getId());
            }

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                Usuario usuarioLogado = new Usuario();

                usuarioLogado.setId(rs.getLong("usr_id"));
                usuarioLogado.setEmail(rs.getString("usr_email"));
                usuarioLogado.setTipoUsuario(rs.getString("usr_tipo").equals("CLIENTE") ? UsuarioType.CLIENTE : UsuarioType.ADMINISTRADOR);
                usuarioLogado.setSenha(rs.getString("usr_senha"));
                usuarioLogado.setAtivo(rs.getBoolean("usr_ativo"));

                entidadeDominios.add(usuarioLogado);
            }

            return entidadeDominios;

        }catch (Exception e) {
            System.err.println("Usuario DAO" + e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }
    }
}
