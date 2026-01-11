package com.event.servlet;

import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.event.dao.EventDAO;
import com.event.model.Event;

@WebServlet("/addEvent")
public class EventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        HttpSession session = req.getSession(false);
        if(session == null || session.getAttribute("userEmail") == null) {
            res.sendRedirect(req.getContextPath() + "/login.jsp");
            return;
        }

        Event event = new Event();
        event.setTitle(req.getParameter("title"));
        event.setDescription(req.getParameter("description"));
        event.setDate(req.getParameter("date"));
        event.setUserEmail(session.getAttribute("userEmail").toString()); // associate event with user

        EventDAO dao = new EventDAO();
        dao.addEvent(event);

        res.sendRedirect(req.getContextPath() + "/dashboard.jsp");
    }
}
