<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
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
            overflow: hidden;
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

        form {
            display: inline-block;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            max-width: 400px;
            width: 100%;
            margin: auto;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
        }

        .submit-container {
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .submit-container input[type="submit"] {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: #fff;
            border: none;
            padding: 15px 25px;
            border-radius: 8px;
            font-size: 1.2em;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }

        .submit-container input[type="submit"]:hover {
            background: linear-gradient(135deg, #0056b3, #007bff);
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0,0,0,0.4);
        }

        .submit-container .submit-icon {
            margin-left: 10px;
            font-size: 1.5em;
            transition: transform 0.3s ease;
        }

        .submit-container input[type="submit"]:hover .submit-icon {
            transform: rotate(20deg);
        }
    </style>
</head>
<body>
    <h2>Register</h2>
    <form action="RegisterServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="Admin">Admin</option>
            <option value="Associate">Associate</option>
        </select><br>
        <div class="submit-container">
            <input type="submit" value="Register">
            <i class="fas fa-user-plus submit-icon"></i>
        </div>
    </form>
</body>
</html>
