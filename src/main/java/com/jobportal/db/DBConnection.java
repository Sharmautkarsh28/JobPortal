package com.jobportal.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static Connection conn;

    public static Connection getConnection() {
        try {
            if (conn == null || conn.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "Enter your workbench password");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
