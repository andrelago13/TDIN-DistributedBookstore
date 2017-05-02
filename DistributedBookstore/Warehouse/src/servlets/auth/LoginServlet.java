package servlets.auth;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by asl_m on 02/05/2017.
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("Hello");
        response.getWriter().write(request.getParameter("username"));
        response.getWriter().write(request.getParameter("password") + '\n' + '\n');
        response.getWriter().write("Login successful");
        response.getWriter().flush();
    }
}
