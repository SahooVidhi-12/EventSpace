package com.event.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.event.dao.UserDAO;
import com.event.model.User;

@WebServlet("/login") // matches your form action
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAO();
        if (dao.login(email, password)) {  // validate against DB
            // Get user details to store in session
            HttpSession session = req.getSession();
            // Optional: fetch user name from DB for welcome message
            User user = dao.getUserByEmail(email);
            String name = (user != null) ? user.getName() : email;

            session.setAttribute("userName", name); // dashboard.jsp uses this
            session.setAttribute("userEmail", email); // for session checks
            res.sendRedirect(req.getContextPath() + "/dashboard.jsp"); // success
        } else {
            // Login failed
            res.sendRedirect(req.getContextPath() + "/login.jsp?error=1");
        }
    }
}
