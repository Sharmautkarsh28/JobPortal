<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Jobs - Job Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f4f4;
            padding: 30px;
        }

        .container {
            max-width: 1000px;
            margin: auto;
        }

        .job-card {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 25px;
            margin-bottom: 20px;
            transition: transform 0.2s;
        }

        .job-card:hover {
            transform: scale(1.01);
        }

        .job-title {
            font-size: 22px;
            font-weight: bold;
            color: #333;
        }

        .job-details {
            margin-top: 10px;
            font-size: 16px;
            color: #555;
        }

        .apply-btn {
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #00bfa6;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .apply-btn:hover {
            background-color: #008e7b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Available Job Listings</h2>
        <%
            Connection conn = com.jobportal.db.DBConnection.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM jobs");

            while (rs.next()) {
        %>
            <div class="job-card">
                <div class="job-title"><%= rs.getString("title") %></div>
                <div class="job-details">
                    <strong>Location:</strong> <%= rs.getString("location") %><br>
                    <strong>Description:</strong> <%= rs.getString("description") %>
                </div>
                <form action="ApplyJobServlet" method="post">
                    <input type="hidden" name="jobId" value="<%= rs.getInt("id") %>">
                    <input type="submit" class="apply-btn" value="Apply">
                </form>
            </div>
        <%
            }
        %>
    </div>
</body>
</html>