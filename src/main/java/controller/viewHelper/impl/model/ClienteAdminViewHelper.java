package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import dao.ClienteDAO;
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
import java.util.List;

public class ClienteAdminViewHelper implements IViewHelper{
    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        String id = request.getParameter("txtNome");

        if(operacao.equals("salvar")) {
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

            IViewHelper enderecoVH = new EnderecoViewHelper();
            Endereco endereco = (Endereco) enderecoVH.getEntidade(request);

            IViewHelper usuarioVH = new UsuarioViewHelper();
            Usuario usuario = (Usuario) usuarioVH.getEntidade(request);

            Cliente cliente = new Cliente();
            cliente.setGenero(genero);
            cliente.setDataNascimento(LocalDate.parse(dataNasc, DateTimeFormatter.ISO_LOCAL_DATE));
            cliente.setCpf(cpf);
            cliente.setTelefone(telefone);
            //cliente.setEndereco(endereco);
            cliente.setUsuario(usuario);
            
            return cliente;

        } else if(operacao.equals("listar")) {

            Usuario usuarioLogado = (Usuario) request.getSession().getAttribute("usuarioLogado");

            Cliente cliente = new Cliente();

            cliente.setUsuario(usuarioLogado);

            return cliente;
        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {

        } else if(operacao.equals("listar")) {
//            if(request.getRequestURI().toString().equals("/Ecommerce/admin/cliente")){
//                EntidadeDominio cliente = new Cliente();
//                //EntidadeDominio clienteConsultado = new ClienteDAO().listar(cliente, "listar", 1);
//
//                request.setAttribute("cliente", clienteConsultado);
//
//                request.getRequestDispatcher("/adm/gerenciarCliente.jsp").forward(request, response);
//
//            } else {
//                EntidadeDominio cliente = new Cliente();
//                List<EntidadeDominio> clientes = new ClienteDAO().listar(cliente, "listarTodos");
//
//                request.setAttribute("clientes", clientes);
//
//                request.getRequestDispatcher("/adm/gerenciamento.jsp").forward(request, response);
//            }

        }
    }
}
