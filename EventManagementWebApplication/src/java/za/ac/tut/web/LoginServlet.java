package za.ac.tut.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet.do")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Simple static authentication logic
        if ("admin".equals(username) && "123".equals(password)) {
            // Forward to the welcome page if login is successful
            request.setAttribute("username", username);
            RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
            dispatcher.forward(request, response);
        } else {
            // Redirect to incorrectPin.jsp if login fails
            request.setAttribute("errorMessage", "Incorrect PIN. Please try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("incorrectPin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
