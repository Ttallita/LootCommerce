package controller;

import controller.command.*;
import controller.viewHelper.IViewHelper;
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
        "/adm"
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


        viewHelpers = new HashMap<>();
        viewHelpers.put("/Ecommerce/cadastro", new ClienteViewHelper());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processaRequest(req, resp);
    }

    private void processaRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String operacao = req.getParameter("operacao");

        System.out.println("============================");
        System.out.println("Nova requisição " + req.getMethod()  + " para " + req.getRequestURI().substring(req.getContextPath().length())
            + " com a operação \"" + operacao + "\"");

        ICommand command = commands.get(operacao);
        System.out.println("Command: " + command.getClass().getSimpleName());

        IViewHelper viewHelper = viewHelpers.get(req.getRequestURI());
        System.out.println("View Helper: " + viewHelpers.getClass().getSimpleName());

        EntidadeDominio entidade = viewHelper.getEntidade(req);
        System.out.println("Entidade : " + entidade);

        Result result = command.execute(entidade, operacao);


        viewHelper.setView(result, req, resp);
    }

}
