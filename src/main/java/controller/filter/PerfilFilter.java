package controller.filter;

import model.Usuario;
import model.UsuarioType;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter({"/cliente/perfil.jsp"})
public class PerfilFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");

        if(usuario != null) {
            if(usuario.getTipoUsuario().equals(UsuarioType.ADMINISTRADOR)) {
                response.sendRedirect("/LootCommerce/adm/principal.jsp");
            }
        } else {
            response.sendRedirect("/LootCommerce/index.jsp");
        }

        filterChain.doFilter(request, response);
    }
}
