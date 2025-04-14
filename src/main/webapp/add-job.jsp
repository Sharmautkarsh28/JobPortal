<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Job</title>
<style>
body {
	background-color: #0d1117;
	font-family: 'Segoe UI', sans-serif;
	color: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-box {
	background: #161b22;
	padding: 40px;
	border-radius: 16px;
	box-shadow: 0 0 20px rgba(0, 255, 170, 0.2);
	width: 400px;
}

.form-box h2 {
	color: #00ffc8;
	margin-bottom: 20px;
}

.form-box input, .form-box textarea, .form-box button {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border-radius: 8px;
	border: none;
}

.form-box button {
	background-color: #00ffc8;
	color: #000;
	cursor: pointer;
}

.form-box button:hover {
	background-color: #00bfa6;
}
</style>
</head>
<body>
	<div class="form-box">
		<h2>Add New Job</h2>
		<form action="AddJobServlet" method="post">
			<input type="text" name="title" placeholder="Job Title" required>
			<input type="text" name="Company" placeholder="Company" required>
			<input type="text" name="location" placeholder="Location" required>
			<textarea name="description" placeholder="Job Description" required></textarea>
			<button type="submit">Add Job</button>
		</form>
	</div>
</body>
</html>