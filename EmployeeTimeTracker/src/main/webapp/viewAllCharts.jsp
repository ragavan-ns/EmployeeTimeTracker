<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Prevent further processing if the user is not logged in
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Charts</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(45deg, #4a90e2, #d0d0d0, #4a90e2, #d0d0d0);
            background-size: 400% 400%;
            animation: formalBackgroundAnimation 20s ease infinite;
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
            overflow-y: auto;
        }

        @keyframes formalBackgroundAnimation {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
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

        ul li {
            margin: 15px 0;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            border-radius: 8px;
            background-color: #4a90e2;
            color: white;
            text-decoration: none;
            font-size: 1.2em;
            font-weight: bold;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
            border: none;
            cursor: pointer;
        }

        a.button::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255,255,255,0.3);
            transition: all 0.4s ease;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
            z-index: 0;
        }

        a.button:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }

        a.button:hover {
            background-color: #357ABD;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        a.button i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <h2>Charts Overview</h2>
    <ul>
        <li><a href="AllDailyChart.jsp" class="button"><i class="fas fa-calendar-day"></i> View Daily Chart</a></li>
        <li><a href="AllWeeklyChart.jsp" class="button"><i class="fas fa-calendar-week"></i> View Weekly Chart</a></li>
        <li><a href="AllMonthlyChart.jsp" class="button"><i class="fas fa-calendar-alt"></i> View Monthly Chart</a></li>
    </ul>
    <a href="dashboard.jsp" class="button"><i class="fas fa-arrow-left"></i> Back to Dashboard</a>
</body>
</html>
