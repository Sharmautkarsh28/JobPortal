<%@ page session="true" %>
<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<style>
body {
    background-color: #000000;
    color: #00ffcc;
    text-align: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    padding-top: 100px;
    margin: 0;
}

h2 {
    font-size: 36px;
    font-weight: bold;
    color: #00ffcc;
    text-shadow: 0 0 15px #00ffcc, 0 0 30px #00ffcc;
    margin-bottom: 40px;
}

.link-box {
    display: inline-block;
    background: linear-gradient(135deg, #1e1e2f, #2c2c3d);
    padding: 30px 40px;
    border: 2px solid #00ffcc;
    box-shadow: 0 0 20px #00ffcc;
    border-radius: 15px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.link-box:hover {
    transform: scale(1.05);
    box-shadow: 0 0 30px #00ffcc, 0 0 60px #00ffcc;
}

.link-box a {
    display: block; /* Make links vertical */
    width: 200px;
    margin: 15px auto; /* Center links inside the box */
    padding: 12px 0;
    font-size: 20px;
    font-weight: bold;
    color: #000000;
    background-color: #00ffcc;
    text-decoration: none;
    border-radius: 8px;
    transition: background-color 0.3s ease, color 0.3s ease, transform 0.2s ease;
}

.link-box a:hover {
    background-color: #ffffff;
    color: #00ffcc;
    transform: scale(1.05);
}
        </style>
<body>
    <h2>Welcome User</h2>
    <div class="link-box">
    <a href="jobs.jsp">View Jobs</a><br>
    <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>