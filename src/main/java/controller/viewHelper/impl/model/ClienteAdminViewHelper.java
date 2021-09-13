package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import dao.ClienteDAO;
import dao.UsuarioDAO;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.cliente.Cliente;
import model.cliente.Endereco;
import model.cliente.Telefone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class ClienteAdminViewHelper implements IViewHelper{
    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String nome = request.getParameter("nome");
            String sobrenome = request.getParameter("sobrenome");
            String genero = request.getParameter("genero");
            String dataNasc = request.getParameter("date");
            String cpf = request.getParameter("cpf");

            String tipoTelefone = request.getParameter("tipoTelefone");

            String phoneCompleto;
            String ddd = "";
            String phone = "";

            phoneCompleto = request.getParameter("phone");

            if(!phoneCompleto.isEmpty()) {
                ddd = request.getParameter("phone").split(" ")[0];
                phone = request.getParameter("phone").split(" ")[1];
            }

            Telefone telefone = new Telefone();
            telefone.setTipo(tipoTelefone);
            telefone.setDdd(ddd);
            telefone.setNumero(phone);

            IViewHelper usuarioVH = new UsuarioViewHelper();
            Usuario usuario = (Usuario) usuarioVH.getEntidade(request);

            IViewHelper enderecoVH = new EnderecoViewHelper();
            Endereco endereco = (Endereco) enderecoVH.getEntidade(request);

            List<Endereco> enderecos = new ArrayList<>();
            enderecos.add(endereco);

            Cliente cliente = new Cliente();
            cliente.setNome(nome);
            cliente.setSobrenome(sobrenome);
            cliente.setGenero(genero);
            cliente.setDataNascimento(LocalDate.parse(dataNasc, DateTimeFormatter.ISO_LOCAL_DATE));
            cliente.setCpf(cpf);
            cliente.setTelefone(telefone);
            cliente.setUsuario(usuario);
            cliente.setEnderecos(enderecos);

            return cliente;

        } else if(operacao.equals("atualizar")) {
            Cliente cliente = new Cliente();

            String idCliente = request.getParameter("idCliente");
            String nome = request.getParameter("nome");
            String sobrenome = request.getParameter("sobrenome");
            String genero = request.getParameter("genero");
            String dataNasc = request.getParameter("date");
            String cpf = request.getParameter("cpf");

            String tipoTelefone = request.getParameter("tipoTelefone");

            String phoneCompleto = request.getParameter("phone");
            String ddd = "";
            String phone = "";

            if(!phoneCompleto.isEmpty()) {
                ddd = request.getParameter("phone").split(" ")[0];
                phone = request.getParameter("phone").split(" ")[1];
            }

            Telefone telefone = new Telefone();
            telefone.setTipo(tipoTelefone);
            telefone.setDdd(ddd);
            telefone.setNumero(phone);

            Usuario usuario = new Usuario();
            usuario.setId(Long.parseLong(idCliente));

            cliente.setId(Long.parseLong(idCliente));
            cliente.setNome(nome);
            cliente.setSobrenome(sobrenome);
            cliente.setGenero(genero);
            cliente.setDataNascimento(LocalDate.parse(dataNasc, DateTimeFormatter.ISO_LOCAL_DATE));
            cliente.setCpf(cpf);
            cliente.setTelefone(telefone);
            cliente.setUsuario(usuario);

            return cliente;
        } else if(operacao.equals("listarTodos")) {
            Cliente cliente = new Cliente();

            return cliente;
        } else if(operacao.equals("listarAdm")) {
            String id = request.getParameter("id");

            Usuario usuario = new Usuario();
            usuario.setId(Long.parseLong(id));

            Cliente cliente = new Cliente();
            cliente.setId(Long.parseLong(id));
            cliente.setUsuario(usuario);

            return cliente;
        }
        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {

        }else if(operacao.equals("atualizar")) {
            Cliente cliente = (Cliente) result.getEntidades().get(0);

            request.setAttribute("cliente", cliente);
            request.getRequestDispatcher("/adm/gerenciarCliente.jsp").forward(request, response);
        }else if(operacao.equals("listarAdm")) {
            Cliente cliente = (Cliente) result.getEntidades().get(0);

            request.setAttribute("cliente", cliente);
            request.getRequestDispatcher("/adm/gerenciarCliente.jsp").forward(request, response);
        } else if(operacao.equals("listarTodos")) {
           List<EntidadeDominio> clientes = result.getEntidades();

           request.setAttribute("clientes", clientes);
           request.getRequestDispatcher("/adm/gerenciamento.jsp").forward(request, response);
        }
    }
}
