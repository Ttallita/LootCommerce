package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.UsuarioType;
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

public class ClienteViewHelper implements IViewHelper {


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
        } else if(operacao.equals("listar")) {
            Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");

            Cliente cliente = new Cliente();
            cliente.setUsuario(usuario);

            return cliente;
        } else if(operacao.equals("atualizar")) {
            Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");

            Cliente cliente = new Cliente();

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

            cliente.setNome(nome);
            cliente.setSobrenome(sobrenome);
            cliente.setGenero(genero);
            cliente.setDataNascimento(LocalDate.parse(dataNasc, DateTimeFormatter.ISO_LOCAL_DATE));
            cliente.setCpf(cpf);
            cliente.setTelefone(telefone);
            cliente.setUsuario(usuario);

            return cliente;
        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            Cliente cliente = (Cliente) result.getEntidades().get(0);

            if(result.getMsg() == null) {
                response.sendRedirect("login.jsp");
            } else {
                String[] mensagensDeErro = result.getMsg().split("\n");

                request.setAttribute("mensagem", mensagensDeErro);
                request.setAttribute("cliente", cliente);
                request.getRequestDispatcher("cadastro.jsp").forward(request, response);
            }
        } else if(operacao.equals("listar")) {
            Cliente cliente = (Cliente) result.getEntidades().get(0);

            request.setAttribute("clienteLogado", cliente);

            request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, response);
        } else if(operacao.equals("atualizar")) {
            Cliente cliente = (Cliente) result.getEntidades().get(0);

            request.setAttribute("clienteLogado", cliente);

            response.sendRedirect("/LootCommerce/clientes/perfil?operacao=listar");
        }
    }
}
