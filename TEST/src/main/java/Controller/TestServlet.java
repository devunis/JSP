package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doBoth(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doBoth(request,response);
    }
    private void doBoth(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "hello servlet!";
        request.setAttribute("msg", msg);
        request.setAttribute("author", "Yoon");
        RequestDispatcher rd = request.getRequestDispatcher("next.jsp");
        rd.forward(request,response);
    }
}
