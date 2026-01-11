package com.event.servlet;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.event.dao.EventDAO;
import com.event.model.Event;

@WebServlet("/viewEvents")
public class ViewEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, jakarta.servlet.ServletException {
        HttpSession session = req.getSession(false);
        if(session == null || session.getAttribute("userEmail") == null) {
            res.sendRedirect(req.getContextPath() + "/login.jsp");
            return;
        }

        String userEmail = session.getAttribute("userEmail").toString();
        EventDAO dao = new EventDAO();
        List<Event> events = dao.getEventsByUser(userEmail); // only current user's events

        req.setAttribute("events", events);
        req.getRequestDispatcher("viewEvents.jsp").forward(req, res);
    }
}
