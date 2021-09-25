package dao;

import model.Usuario;

import model.UsuarioType;
import model.cliente.CartaoDeCredito;
import model.cliente.Cliente;
import model.EntidadeDominio;
import model.cliente.Endereco;

import model.cliente.Telefone;
import utils.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ClienteDAO implements IDAO{
    private Connection conn;

    @Override
    public EntidadeDominio salvar(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO clientes (cli_usr_id, cli_nome, cli_sobrenome, cli_cpf, cli_dt_nasc, cli_genero, cli_telefone_num, cli_telefone_ddd, cli_telefone_tp)" +
                    " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            Usuario usuario = cliente.getUsuario();

            usuario = (Usuario) new UsuarioDAO().salvar(usuario);

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, usuario.getId());
            pstm.setString(2, cliente.getNome());
            pstm.setString(3, cliente.getSobrenome());
            pstm.setString(4, cliente.getCpf());
            pstm.setDate(5, Date.valueOf(cliente.getDataNascimento()));
            pstm.setString(6, cliente.getGenero());
            pstm.setString(7, cliente.getTelefone().getNumero());
            pstm.setString(8, cliente.getTelefone().getDdd());
            pstm.setString(9, cliente.getTelefone().getTipo());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long idCliente = 0L;

            while (rs.next()) {
                idCliente = rs.getLong(1);
            }

            Endereco endereco = cliente.getEnderecos().get(0);
            endereco.setCliente(cliente);
            endereco.getCliente().setId(idCliente);

            new EnderecoDAO().salvar(endereco);

            return cliente;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public EntidadeDominio atualizar(EntidadeDominio entidade) {

        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "UPDATE clientes SET cli_nome = ?, cli_sobrenome = ?, cli_cpf = ?, cli_dt_nasc = ?, cli_genero = ?, cli_telefone_num = ?, cli_telefone_ddd = ?, cli_telefone_tp = ?" +
                    "WHERE cli_usr_id = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, cliente.getNome());
            pstm.setString(2, cliente.getSobrenome());
            pstm.setString(3, cliente.getCpf());
            pstm.setDate(4, Date.valueOf(cliente.getDataNascimento()));
            pstm.setString(5, cliente.getGenero());
            pstm.setString(6, cliente.getTelefone().getNumero());
            pstm.setString(7, cliente.getTelefone().getDdd());
            pstm.setString(8, cliente.getTelefone().getTipo());

            pstm.setLong(9, cliente.getUsuario().getId());

            pstm.execute();

            return cliente;

        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;

        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public EntidadeDominio deletar(EntidadeDominio entidade) {
        return null;
    }

    @Override
    public List<EntidadeDominio> listar(EntidadeDominio entidade, String operacao) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            if(operacao.equals("listar") || operacao.equals("listarAdm")) {
                sql = "SELECT * from clientes where cli_usr_id = ?";
            }


            if(operacao.equals("listarTodos")) {
                sql = "select * from usuarios full join clientes on usr_id = cli_usr_id where usr_tipo = 'CLIENTE'";
            }

            List<EntidadeDominio> entidadeDominios = new ArrayList<>();

            PreparedStatement pstm = conn.prepareStatement(sql);

            if(operacao.equals("listar")) {
                pstm.setLong(1, cliente.getUsuario().getId());
            } else if(operacao.equals("listarAdm")) {
                pstm.setLong(1, cliente.getId());
            }

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                Cliente clienteLogado = new Cliente();

                clienteLogado.setId(rs.getLong("cli_usr_id"));

                clienteLogado.setNome(rs.getString("cli_nome"));
                clienteLogado.setSobrenome(rs.getString("cli_sobrenome"));
                clienteLogado.setGenero(rs.getString("cli_genero"));
                clienteLogado.setDataNascimento(rs.getDate("cli_dt_nasc").toLocalDate());
                clienteLogado.setCpf(rs.getString("cli_cpf"));

                String ddd = rs.getString("cli_telefone_ddd");
                String phone = rs.getString("cli_telefone_num");
                String tipoTelefone = rs.getString("cli_telefone_tp");

                Telefone telefone = new Telefone();
                telefone.setDdd(ddd);
                telefone.setNumero(phone);
                telefone.setTipo(tipoTelefone);

                Endereco endereco = new Endereco();
                endereco.setCliente(clienteLogado);

                List<EntidadeDominio> enderecos = new EnderecoDAO().listar(endereco, "listarPorCliente");
                List<Endereco> enderecosConvertidos = enderecos.stream()
                        .map(enderecoMap -> (Endereco) enderecoMap)
                        .collect(Collectors.toList());

                CartaoDeCredito cartaoDeCredito = new CartaoDeCredito();
                cartaoDeCredito.setCliente(clienteLogado);

                List<EntidadeDominio> cartoes = new CartaoDeCreditoDAO().listar(cartaoDeCredito, "listarPorCliente");
                List<CartaoDeCredito> cartaoDeCreditosConvertidos = cartoes.stream()
                        .map(cartaoMap -> (CartaoDeCredito) cartaoMap)
                        .collect(Collectors.toList());

                if(operacao.equals("listar")) {
                    clienteLogado.setUsuario(cliente.getUsuario());
                } else if(operacao.equals("listarAdm")){
                    clienteLogado.setUsuario((Usuario) new UsuarioDAO().listar(cliente.getUsuario(), "listarAdm").get(0));
                } else{
                    Usuario usuario = new Usuario();
                    usuario.setId(rs.getLong("usr_id"));
                    usuario.setEmail(rs.getString("usr_email"));
                    usuario.setSenha(rs.getString("usr_senha"));
                    usuario.setTipoUsuario(rs.getString("usr_tipo").equals("CLIENTE") ? UsuarioType.CLIENTE : UsuarioType.ADMINISTRADOR);
                    usuario.setAtivo(rs.getBoolean("usr_ativo"));
                    clienteLogado.setUsuario(usuario);
                }

                clienteLogado.setTelefone(telefone);
                clienteLogado.setEnderecos(enderecosConvertidos);
                clienteLogado.setCartoesDeCredito(cartaoDeCreditosConvertidos);

                entidadeDominios.add(clienteLogado);
            }
            return entidadeDominios;
        }catch (Exception e) {
            System.err.println("ClienteDAO erro: " + e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }
    }
}
