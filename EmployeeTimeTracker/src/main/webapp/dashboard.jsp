<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page import="jakarta.servlet.http.HttpServletResponse"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    } else {
        String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <!-- Include Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Include Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <!-- Custom CSS for styling and animations -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f9;
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
            background: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #343a40;
            margin-bottom: 20px;
        }
        .button {
            display: inline-block;
            margin: 10px;
            padding: 15px 25px;
            font-size: 16px;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: opacity 0.3s ease-in-out;
            background: linear-gradient(45deg, #6a11cb, #2575fc);
        }
        .button.admin {
            background: linear-gradient(45deg, #ff416c, #ff4b2b);
        }
        .button:hover {
            opacity: 0.9;
        }
        .button i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
        <%
            if ("Admin".equals(role)) {
        %>
        <a href="adminPage.jsp" class="button admin"><i class="fas fa-user-shield"></i> Admin Page</a><br>
        <%
            } else {
        %>
        <a href="taskPage.jsp" class="button"><i class="fas fa-tasks"></i> Task Management</a><br>
        <a href="associatePage.jsp" class="button"><i class="fas fa-users"></i> View Associates</a><br>
        <%
            }
        %>
        <a href="LogoutServlet" class="button"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
<%
    }
%>
