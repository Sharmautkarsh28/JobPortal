<!DOCTYPE html>
<html>
<head>
    <title>Job Portal - Welcome</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-color: #121212;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .welcome-box {
            background: #1e1e1e;
            padding: 40px 60px;
            border-radius: 16px;
            box-shadow: 0 0 25px #00ffc8aa;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        .welcome-box h1 {
            color: #00ffc8;
            margin-bottom: 25px;
            text-shadow: 0 0 10px #00ffc8;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            gap: 30px;
        }

        .btn-container a {
            background-color: #00ffc8;
            color: #121212;
            padding: 14px 32px;
            border-radius: 10px;
            font-weight: bold;
            font-size: 18px;
            text-decoration: none;
            transition: 0.3s;
            box-shadow: 0 0 15px #00ffc8;
        }

        .btn-container a:hover {
            background-color: #00bfa6;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>Welcome to Job Portal</h1>
        <div class="btn-container">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </div>
</body>
</html>