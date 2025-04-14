<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
<style>
body {
	background-color: #0d1117;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	font-family: 'Segoe UI', sans-serif;
}

.login-box {
	background: #161b22;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 0 20px rgba(0, 255, 170, 0.2);
	text-align: center;
	width: 400px;
}

.login-box h2 {
	color: #00ffc8;
}

.login-box input, .login-box button {
	width: 100%;
	padding: 12px;
	margin: 10px 0;
	border-radius: 8px;
	border: none;
}

.login-box button {
	background-color: #00ffc8;
	color: #000;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="login-box">
		<h2>Admin Login</h2>
		<form action="AdminLoginServlet" method="post">
			<input type="text" name="email" placeholder="Admin Email" required>
			<input type="password" name="password" placeholder="Password"
				required>
			<button type="submit">Login</button>
		</form>
		
	</div>
</body>
</html>