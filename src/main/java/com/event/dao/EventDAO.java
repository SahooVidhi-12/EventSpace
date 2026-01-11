package com.event.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.event.model.Event;

public class EventDAO {

    public void addEvent(Event event) {
        String sql = "INSERT INTO events(title, description, event_date, user_email) VALUES(?,?,?,?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, event.getTitle());
            ps.setString(2, event.getDescription());
            ps.setString(3, event.getDate());
            ps.setString(4, event.getUserEmail());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Event> getEventsByUser(String userEmail) {
        List<Event> list = new ArrayList<>();
        String sql = "SELECT * FROM events WHERE user_email=? ORDER BY event_date";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, userEmail);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Event e = new Event();
                e.setTitle(rs.getString("title"));
                e.setDescription(rs.getString("description"));
                e.setDate(rs.getString("event_date"));
                e.setUserEmail(rs.getString("user_email"));
                list.add(e);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
