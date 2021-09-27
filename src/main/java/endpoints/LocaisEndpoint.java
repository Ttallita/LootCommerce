package endpoints;

import com.google.gson.Gson;
import dao.PaisDAO;
import model.cliente.endereco.Pais;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/locais")
public class LocaisEndpoint extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Pais> paises = new PaisDAO().listar();

        String json = new Gson().toJson(paises);

        resp.setContentType("application/json; charset=utf-8");

        PrintWriter writer = resp.getWriter();
        writer.write(json);
        writer.flush();
    }
}
