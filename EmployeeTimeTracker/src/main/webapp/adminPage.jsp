<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
    <!-- Custom CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            animation: fadeIn 1s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            margin: 20px 0;
        }
        a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            background: rgba(0, 0, 0, 0.3);
            transition: background 0.3s ease;
        }
        a:hover {
            background: rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <!--
    
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return; // Ensure no further processing is done after redirection
        } else if (!session.getAttribute("role").equals("1")) {
            response.sendRedirect("dashboard.jsp");
            return; // Ensure no further processing is done after redirection
        }
    
    -->
    <div class="container">
        <h2>Admin Page</h2>
        <ul>
            <li><a href="viewAllTasks.jsp">View All Tasks</a></li>
            <li><a href="viewAllCharts.jsp">View All Charts</a></li>
        </ul>
        <a href="dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
