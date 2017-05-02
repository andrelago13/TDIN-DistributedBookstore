import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Created by André on 30/04/2017.
 */
@WebServlet(name = "MyServlet")
public class MyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("title", "Look at me!");
        ArrayList<String> items = new ArrayList<>();
        items.add("ola");
        items.add("adeus");
        request.setAttribute("list", items);
        getServletContext().getRequestDispatcher("/test.jsp").forward(request, response);
    }
}
