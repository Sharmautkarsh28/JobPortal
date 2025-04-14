package com.jobportal.servlet;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/AdminLoginServlet")
		
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(email.equals("admin@jobportal.com") && password.equals("admin123")) {
            request.getSession().setAttribute("admin", email);
            response.sendRedirect("admin-dashboard.jsp");
        } else {
            response.sendRedirect("admin_login.jsp?error=invalid");
        }
    }
}