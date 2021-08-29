package controller;

import controller.command.*;
import controller.viewHelper.IViewHelper;
import controller.viewHelper.impl.LoginViewHelper;
import controller.viewHelper.impl.model.CartaoDeCreditoViewHelper;
import controller.viewHelper.impl.model.ClienteViewHelper;
import model.EntidadeDominio;
import model.Result;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(urlPatterns = {
        "/login",
        "/logout",
        "/cadastro",
        "/clientes",
        "/admin/*"
})
public class Controller extends HttpServlet{
    private static final long serialVersionUID = 1L;

    private Map<String, ICommand> commands;
    private Map<String, IViewHelper> viewHelpers;

    public Controller() {
        commands = new HashMap<>();
        commands.put("salvar", new SalvarCommand());
        commands.put("atualizar", new AtualizarCommand());
        commands.put("listar", new ListarCommand());
        commands.put("remover", new ExcluirCommand());
        commands.put("login", new ListarCommand());

        viewHelpers = new HashMap<>();
        viewHelpers.put("/Ecommerce/cadastro", new ClienteViewHelper());
        viewHelpers.put("/Ecommerce/admin/cadastrarCartao", new CartaoDeCreditoViewHelper());
        viewHelpers.put("/Ecommerce/login", new LoginViewHelper());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(req.getRequestURI().equals("/Ecommerce/logout")) {
            if(req.getSession().getAttribute("usuarioLogado") != null) {
                req.getSession().invalidate();
            }

            resp.sendRedirect("index.jsp");
            return;
        }

        processaRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processaRequest(req, resp);
    }

    private void processaRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String operacao = req.getParameter("operacao");

        ICommand command = commands.get(operacao);

        IViewHelper viewHelper = viewHelpers.get(req.getRequestURI());

        EntidadeDominio entidade = viewHelper.getEntidade(req);

        Result result = command.execute(entidade, operacao);

        viewHelper.setView(result, req, resp);
    }

}
