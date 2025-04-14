package com.jobportal.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection conn = com.jobportal.db.DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("userId", rs.getInt("id"));
                response.sendRedirect("user-dashboard.jsp");
            } else if (email.equals("admin@admin.com") && password.equals("admin")) {
                response.sendRedirect("admin-dashboard.jsp");
            } else {
                response.sendRedirect("login.jsp?error=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}