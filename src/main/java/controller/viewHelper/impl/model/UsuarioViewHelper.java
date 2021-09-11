package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import dao.ClienteDAO;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.UsuarioType;
import model.cliente.Cliente;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UsuarioViewHelper implements IViewHelper {

    @Override
    public EntidadeDominio getEntidade(HttpServletRequest request) {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("salvar")) {
            String nome = request.getParameter("nome");
            String sobrenome = request.getParameter("sobrenome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String confirmarSenha = request.getParameter("senhaConfirmacao");

            Usuario usuario = new Usuario();
            usuario.setEmail(email);
            usuario.setSenha(senha);
            usuario.setConfirmarSenha(confirmarSenha);
            usuario.setTipoUsuario(UsuarioType.CLIENTE);
            usuario.setAtivo(true);

            return usuario;
        } else if (operacao.equals("atualizar")) {
            Usuario usuarioLogado = (Usuario) request.getSession().getAttribute("usuarioLogado");

            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String senhaConfirmar = request.getParameter("senhaConfirmacao");

            Usuario usuario = usuarioLogado;
            usuario.setEmail(email);
            usuario.setSenha(senha);
            usuario.setConfirmarSenha(senhaConfirmar);

            return usuario;
        }

        return null;
    }

    @Override
    public void setView(Result result, HttpServletRequest request, HttpServletResponse httpResponse) throws IOException, ServletException {
        String operacao = request.getParameter("operacao");

        if(operacao.equals("atualizar")) {
            Usuario usuario = (Usuario) result.getEntidades().get(0);

            Cliente cliente = new Cliente();
            cliente.setUsuario(usuario);

            List<EntidadeDominio> entidade  = new ClienteDAO().listar(cliente, "listar");
            cliente = (Cliente) entidade.get(0);

            request.setAttribute("clienteLogado", cliente);
            request.setAttribute("aba", "senha");

            if(result.getMsg() == null) {
                request.getSession().setAttribute("usuarioLogado", usuario);
                request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, httpResponse);
            } else {
                String msgErro[] = result.getMsg().split("\n");

                request.setAttribute("mensagem", msgErro);
                request.getRequestDispatcher("/cliente/perfil.jsp").forward(request, httpResponse);
            }
        }
    }
}
