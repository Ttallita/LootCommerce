package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
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

public class ClienteViewHelper implements IViewHelper {


    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        String id = request.getParameter("txtNome");

        if(operacao.equals("salvar")) {
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String senhaConfirmacao = request.getParameter("senhaConfirmacao");
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

            IViewHelper enderecoVH = new EnderecoViewHelper();
            Endereco endereco = (Endereco) enderecoVH.getEntidade(request);

            IViewHelper usuarioVH = new UsuarioViewHelper();
            Usuario usuario = (Usuario) usuarioVH.getEntidade(request);

            Cliente cliente = new Cliente();
            cliente.setGenero(genero);
            cliente.setDataNascimento(dataNasc);
            cliente.setCpf(cpf);
            cliente.setTelefone(telefone);
            cliente.setEndereco(endereco);
            cliente.setUsuario(usuario);

            return cliente;

        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String operacao = request.getParameter("operacao");

        Cliente cliente = (Cliente) result.getEntidades().get(0);

        if(operacao.equals("salvar")) {
            if(result.getMsg() == null) {
                response.sendRedirect("login.jsp");
            } else {

                String[] messagensDeErro = result.getMsg().split("\n");

                request.setAttribute("mensagem", messagensDeErro);
                request.setAttribute("cliente", cliente);
                request.getRequestDispatcher("cadastro.jsp").forward(request, response);
            }
        }
    }
}
