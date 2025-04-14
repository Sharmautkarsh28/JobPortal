<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Role</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            display: flex;
            gap: 40px;
        }

        .role-box {
            width: 250px;
            height: 150px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 20px;
            font-weight: bold;
            color: #333;
            transition: 0.3s;
            cursor: pointer;
        }

        .role-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0,0,0,0.3);
            background: #e0f7fa;
        }

        a {
            text-decoration: none;
            color: inherit;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="role-box">
        <a href="index.jsp">Job Seeker</a>
    </div>
    <div class="role-box">
        <a href="admin-dashboard.jsp">Job Recruiter</a>
    </div>
</div>

</body>
</html>