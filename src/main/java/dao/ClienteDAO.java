package dao;

import model.IEntidade;
import model.Usuario;
import model.UsuarioType;
import model.cliente.CartaoDeCredito;
import model.cliente.Cliente;
import model.EntidadeDominio;
import model.cliente.Endereco;
import model.cliente.Telefone;
import org.w3c.dom.ls.LSException;
import utils.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ClienteDAO implements IDAO{
    private Connection conn;

    @Override
    public Long salvar(EntidadeDominio entidade) {
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "INSERT INTO clientes (cli_usr_id, cli_cpf, cli_dt_nasc, cli_genero, cli_telefone_num, cli_telefone_ddd, cli_telefone_tp)" +
                    " VALUES (?, ?, ?, ?, ?, ?, ?)";

            Usuario usuario = cliente.getUsuario();
            Endereco endereco = cliente.getEndereco();

            Long idUser = new UsuarioDAO().salvar(usuario);
            Long idEndereco = new EnderecoDAO().salvar(endereco);

            PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstm.setLong(1, idUser);
            pstm.setString(2, cliente.getCpf());
            pstm.setDate(3, Date.valueOf(cliente.getDataNascimento()));
            pstm.setString(4, cliente.getGenero());
            pstm.setString(5, cliente.getTelefone().getNumero());
            pstm.setString(6, cliente.getTelefone().getDdd());
            pstm.setString(7, cliente.getTelefone().getTipo());

            pstm.execute();

            ResultSet rs = pstm.getGeneratedKeys();

            Long idCliente = 0L;

            while (rs.next()) {
                idCliente = rs.getLong(1);
            }

            sql = "INSERT INTO enderecos_cliente (ecl_end_id, ecl_cli_id)" +
                    "VALUES (?, ?)";


            pstm = conn.prepareStatement(sql);

            pstm.setLong(1, idEndereco);
            pstm.setLong(2, idCliente);

            pstm.execute();

            return idCliente;
        }catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }finally {
            conexao.fecharConexao(conn);
        }

    }

    @Override
    public boolean atualizar(EntidadeDominio entidade) {

        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "UPDATE cliente SET cli_cpf = ?, cli_dt_nasc = ?, cli_genero = ?, cli_telefone_num = ?, cli_telefone_ddd = ?, cli_telefone_tp = ?";

            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(2, cliente.getCpf());
            pstm.setDate(3, Date.valueOf(cliente.getDataNascimento()));
            pstm.setString(4, cliente.getGenero());
            pstm.setString(5, cliente.getTelefone().getNumero());
            pstm.setString(6, cliente.getTelefone().getDdd());
            pstm.setString(7, cliente.getTelefone().getTipo());


            new UsuarioDAO().atualizar(cliente.getUsuario());
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
        Cliente cliente = (Cliente) entidade;
        Conexao conexao = new Conexao();

        try {
            conn = conexao.getConexao();

            String sql = "";

            if(operacao.equals("listar")) {
                sql = "SELECT * from clientes where cli_usr_id = ?";
            }

            List<EntidadeDominio> entidadeDominios = new ArrayList<>();

            PreparedStatement pstm = conn.prepareStatement(sql);

            if(operacao.equals("listar")) {
                pstm.setLong(1, cliente.getUsuario().getId());

                ResultSet rs = pstm.executeQuery();

                while (rs.next()) {
                    Cliente clienteLogado = new Cliente();

                    clienteLogado.setId(rs.getLong("cli_usr_id"));
                    clienteLogado.setGenero(rs.getString("cli_genero"));
                    clienteLogado.setDataNascimento(rs.getDate("cli_dt_nasc").toString());
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

                    CartaoDeCredito cartao = new CartaoDeCredito();
                    cartao.setCliente(clienteLogado);

                    List<EntidadeDominio> enderecos = new EnderecoDAO().listar(endereco, "listarPorCliente");
                    List<Endereco> enderecosConvertidos = enderecos.stream()
                            .map(enderecoMap -> (Endereco) enderecoMap)
                            .collect(Collectors.toList());

                    List<EntidadeDominio> cartoes = new CartaoDeCreditoDAO().listar(cartao, "listarPorCliente");
                    List<CartaoDeCredito> cartoesConvertidos = cartoes.stream()
                            .map(cartaoMap -> (CartaoDeCredito) cartaoMap)
                            .collect(Collectors.toList());

                    clienteLogado.setTelefone(telefone);
                    clienteLogado.setUsuario(cliente.getUsuario());
                    clienteLogado.setEnderecos(enderecosConvertidos);
                    clienteLogado.setCartoesDeCredito(cartoesConvertidos);

                    entidadeDominios.add(clienteLogado);
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
