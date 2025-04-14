<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
<form action="add-job.jsp" method="get">
	<button class="btn edit-btn">+ Add New Job</button>
</form>
<style>
body {
	background-color: #0d1117;
	color: #fff;
	font-family: 'Segoe UI', sans-serif;
	padding: 30px;
}

h2 {
	color: #00ffc8;
}

.job-card {
	background: #161b22;
	border-radius: 12px;
	padding: 20px;
	margin: 20px 0;
	box-shadow: 0 0 15px rgba(0, 255, 170, 0.15);
}

.job-card h3 {
	margin: 0;
	color: #00ffc8;
}

.job-card p {
	margin: 10px 0;
}

.btn {
	padding: 8px 16px;
	margin-right: 10px;
	border: none;
	border-radius: 8px;
	cursor: pointer;
}

.edit-btn {
	background-color: #00bfa6;
	color: white;
}

.delete-btn {
	background-color: #ff3d3d;
	color: white;
}
</style>
</head>
<body>
	<h2>Welcome Admin!</h2>
	<%
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "2992003@utkarsh");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM jobs");
	while (rs.next()) {
	%>
	<div class="job-card">
		<h3><%=rs.getString("title")%></h3>
		<p>
			<strong>Location:</strong>
			<%=rs.getString("location")%></p>
		<p>
			<strong>Description:</strong>
			<%=rs.getString("description")%></p>
		
		<form action="DeleteJobServlet" method="post" style="display: inline;">
			<input type="hidden" name="jobId" value="<%=rs.getInt("id")%>">
			<button class="btn delete-btn" type="submit">Delete</button>
		</form>
	</div>
	<%
	}
	conn.close();
	%>
	<form action="roleselection.jsp" method="get"
			style="margin-bottom: 20px;">
			<button class="btn home-btn">Home</button>
		</form>
</body>
</html>