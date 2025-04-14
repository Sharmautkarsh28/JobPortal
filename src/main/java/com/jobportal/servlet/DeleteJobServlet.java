package com.jobportal.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/DeleteJobServlet")
public class DeleteJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int jobId = Integer.parseInt(request.getParameter("jobId"));

        try {
            Connection conn = com.jobportal.db.DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM jobs WHERE id=?");
            ps.setInt(1, jobId);
            ps.executeUpdate();
            response.sendRedirect("admin-dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}