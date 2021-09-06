package controller.viewHelper.impl.model;

import controller.viewHelper.IViewHelper;
import model.EntidadeDominio;
import model.Result;
import model.Usuario;
import model.UsuarioType;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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

            if(result.getMsg() == null) {
                request.setAttribute("usuarioLogado", usuario);

                httpResponse.sendRedirect("/Ecommerce/clientes/perfil?operacao=listar");
            }
        }
    }
}
