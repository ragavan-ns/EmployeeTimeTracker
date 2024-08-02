<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e9ecef;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    h2 {
        color: #343a40;
        margin-bottom: 20px;
    }
    .container {
        text-align: center;
        background: #fff;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
    }
    .button.login {
        background: linear-gradient(45deg, #6a11cb, #2575fc);
    }
    .button.register {
        background: linear-gradient(45deg, #00b09b, #96c93d);
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
    <h2>Welcome to EmployeeTimeTracker</h2>
    <div>
        <a href="login.jsp" target="_blank" class="button login">
            <i class="fas fa-sign-in-alt"></i> Login Page
        </a>
        <a href="register.jsp" target="_blank" class="button register">
            <i class="fas fa-user-plus"></i> Register Page
        </a>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>
