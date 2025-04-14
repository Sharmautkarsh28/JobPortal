<!-- application-success.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Application Success</title>
    <style>
        body {
            background-color: #0f0f0f;
            color: #00ffcc;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
        }

        .success-box {
            background-color: #1a1a1a;
            border: 2px solid #00ffcc;
            padding: 40px;
            border-radius: 20px;
            width: 400px;
            margin: auto;
            box-shadow: 0 0 20px #00ffcc;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background-color: #00ffcc;
            color: #000;
            text-decoration: none;
            border-radius: 10px;
            font-weight: bold;
        }

        a:hover {
            background-color: #00e6b8;
        }
    </style>
</head>
<body>
    <div class="success-box">
        <h2>Congratulations!</h2>
        <p>You have successfully applied for the job.</p>
        <a href="jobs.jsp">Back to Jobs</a>
    </div>
</body>
</html>