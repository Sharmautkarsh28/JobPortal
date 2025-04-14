package com.jobportal.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/ApplyJobServlet")
public class ApplyJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int jobId = Integer.parseInt(request.getParameter("jobId"));
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId != null) {
            try {
                Connection conn = com.jobportal.db.DBConnection.getConnection();
                PreparedStatement ps = conn.prepareStatement("INSERT INTO applications (user_id, job_id) VALUES (?, ?)");
                ps.setInt(1, userId);
                ps.setInt(2, jobId);
                ps.executeUpdate();
                response.sendRedirect("application-success.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}