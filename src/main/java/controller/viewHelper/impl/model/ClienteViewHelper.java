package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
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
            String ddd = request.getParameter("phone").split(" ")[0];
            String phone = request.getParameter("phone").split(" ")[1];

            Telefone telefone = new Telefone();
            telefone.setTipo(tipoTelefone);
            telefone.setDdd(ddd);
            telefone.setNumero(phone);

            IViewHelper enderecoVH = new EnderecoViewHelper();
            Endereco endereco = (Endereco) enderecoVH.getEntidade(request);

            Cliente cliente = new Cliente();
            cliente.setEmail(email);
            cliente.setSenha(senha);
            cliente.setNome(nome + " " + sobrenome);
            cliente.setGenero(genero);
            cliente.setDataNascimento(dataNasc);
            cliente.setCpf(cpf);
            cliente.setTelefone(telefone);
            cliente.setEndereco(endereco);

            return cliente;

        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            Cliente cliente = (Cliente) result.getEntidades().get(0);

            request.getRequestDispatcher("/Eccommerce/login.jsp").forward(request, response);
        }
    }
}
