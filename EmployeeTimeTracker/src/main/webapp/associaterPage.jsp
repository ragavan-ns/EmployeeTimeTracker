<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--  
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Prevent further processing if the user is not logged in
    } else if (!"Associate".equals(session.getAttribute("role"))) {
        response.sendRedirect("dashboard.jsp");
        return; // Redirect to dashboard if the user is not an associate
    }
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Associate Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome for icons -->
    <style>
        @keyframes formalBackgroundAnimation {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(45deg, #4a90e2, #d0d0d0, #4a90e2, #d0d0d0);
            background-size: 400% 400%;
            animation: formalBackgroundAnimation 20s ease infinite;
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
            position: relative;
            overflow-x: hidden;
            overflow-y: auto; /* Enable vertical scrolling */
        }

        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://www.example.com/background-illustration.svg') no-repeat center center;
            background-size: cover;
            opacity: 0.1;
            z-index: -1;
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            font-size: 2.5em;
            font-weight: 600;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 10px 0;
        }

        a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            font-weight: bold;
            display: inline-flex;
            align-items: center;
            padding: 15px 25px;
            border-radius: 8px;
            background-color: #007bff;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
        }

        a i {
            margin-right: 8px;
        }

        a::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(0,0,0,0.1);
            transition: all 0.4s ease;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
            z-index: 0;
        }

        a:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }

        a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }
    </style>
</head>
<body>
    <h2>Associate Page</h2>
    <ul>
        <li><a href="viewMyCharts.jsp"><i class="fas fa-chart-line"></i> View My Charts</a></li>
    </ul>
    <a href="dashboard.jsp"><i class="fas fa-arrow-left"></i> Back to Dashboard</a>
</body>
</html>
