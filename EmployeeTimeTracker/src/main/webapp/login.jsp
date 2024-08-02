<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(45deg, #4a90e2, #d0d0d0, #4a90e2, #d0d0d0);
            background-size: 400% 400%;
            animation: formalBackgroundAnimation 20s ease infinite;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
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

        form {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
            width: 100%;
        }

        .input-group i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #999;
        }

        .input-group input {
            width: 100%;
            padding: 10px 10px 10px 35px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .input-group input:focus {
            border-color: #4a90e2;
            box-shadow: 0 0 5px rgba(74, 144, 226, 0.5);
        }

        .button {
            display: inline-block;
            padding: 15px 25px;
            margin: 15px 0;
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

        .button::before {
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

        .button:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }

        .button:hover {
            background-color: #357ABD;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .button i {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form action="LoginServlet" method="post">
        <h2>Login</h2>
        <div class="input-group">
            <label for="username"><i class="fas fa-user"></i> Username:</label>
            <input type="text" id="username" name="username">
        </div>
        <div class="input-group">
            <label for="password"><i class="fas fa-lock"></i> Password:</label>
            <input type="password" id="password" name="password">
        </div>
        <button type="submit" class="button"><i class="fas fa-sign-in-alt"></i> Login</button>
    </form>
</body>
</html>
