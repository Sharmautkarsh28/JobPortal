package com.jobportal.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection conn = com.jobportal.db.DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (name, email, password) VALUES (?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.executeUpdate();
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}