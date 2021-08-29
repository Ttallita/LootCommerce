package controller.filter;

import model.Usuario;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebFilter({"/login.jsp"})
public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        Usuario usuarioLogado = (Usuario) req.getSession().getAttribute("usuarioLogado");

        if(usuarioLogado != null) {
            res.sendRedirect("/Ecommerce/index.jsp");

            return;
        }

        chain.doFilter(req, res);

    }
}
