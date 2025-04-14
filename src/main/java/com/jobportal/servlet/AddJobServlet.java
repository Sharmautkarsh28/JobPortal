package com.jobportal.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/AddJobServlet")
public class AddJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("title");
        String company = request.getParameter("company");
        String location = request.getParameter("location");
        String description = request.getParameter("description");

        try {
            Connection conn = com.jobportal.db.DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO jobs (title, company, location, description) VALUES (?, ?, ?, ?)");
            ps.setString(1, title);
            ps.setString(2, company);
            ps.setString(3, location);
            ps.setString(4, description);
            ps.executeUpdate();
            response.sendRedirect("admin-dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}