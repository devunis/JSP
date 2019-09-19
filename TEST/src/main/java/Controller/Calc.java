package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/Calc")

public class Calc extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doBoth(req,resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doBoth(req,resp);
    }
    protected void doBoth(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String m = "";
        int result = 0;
        String math = req.getParameter("math");
        int num1 = Integer.parseInt(req.getParameter("num1"));
        int num2 = Integer.parseInt(req.getParameter("num2"));
        if(math.equals("+")){
            result = num1 + num2;
            m = "+";
        }
        if(math.equals("-")){
            result = num1 - num2;
            m = "-";
        }
        if(math.equals("*")){
            result = num1 * num2;
            m = "*";
        }
        if(math.equals("/")){
            result = num1 / num2;
            m = "/";
        }
        req.setAttribute("num1",num1);

        req.setAttribute("num2",num2);

        req.setAttribute("math",m);
        req.setAttribute("result", result);
        req.setAttribute("RS", num1 + m + num2 + "=" + result);
        RequestDispatcher rd = req.getRequestDispatcher("CalcPage.jsp");
        rd.forward(req,resp);


    }
}
