<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ResultSet task = (ResultSet) request.getAttribute("task");
    if (task != null) {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Task</title>
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

        h2 i {
            margin-right: 10px;
            color: #007bff;
        }

        form {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
            margin-bottom: 30px;
            width: 80%;
            margin: auto;
        }

        .form-group {
            flex: 1 1 calc(50% - 20px);
            margin: 10px;
        }

        .form-group.full-width {
            flex: 1 1 100%;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            text-align: left;
        }

        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group input[type="time"],
        .form-group textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: calc(100% - 22px); /* Adjust width to account for padding and border */
            margin-bottom: 15px;
        }

        .form-submit {
            text-align: center;
            width: 100%;
            padding-top: 20px;
        }

        .form-submit input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 15px 25px;
            border-radius: 8px;
            font-size: 1.2em;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .form-submit input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            color: #fff;
            text-decoration: none;
            font-size: 1em;
            font-weight: bold;
            display: inline-flex;
            align-items: center;
            padding: 10px 20px;
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
    <h2><i class="fas fa-edit"></i> Edit Task</h2>
    <form action="EditTaskServlet" method="post">
        <input type="hidden" name="taskId" value="<%= task.getInt("task_id") %>">
        <div class="form-group">
            <label for="project">Project:</label>
            <input type="text" id="project" name="project" value="<%= task.getString("project") %>">
        </div>
        <div class="form-group">
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="<%= task.getDate("date") %>">
        </div>
        <div class="form-group">
            <label for="startTime">Start Time:</label>
            <input type="time" id="startTime" name="startTime" value="<%= task.getTime("start_time") %>">
        </div>
        <div class="form-group">
            <label for="endTime">End Time:</label>
            <input type="time" id="endTime" name="endTime" value="<%= task.getTime("end_time") %>">
        </div>
        <div class="form-group">
            <label for="category">Category:</label>
            <input type="text" id="category" name="category" value="<%= task.getString("category") %>">
        </div>
        <div class="form-group full-width">
            <label for="description">Description:</label>
            <textarea id="description" name="description"><%= task.getString("description") %></textarea>
        </div>
        <div class="form-submit">
            <input type="submit" value="Update Task">
        </div>
    </form>
    <a href="taskPage.jsp"><i class="fas fa-arrow-left"></i> Back to Task Management</a>
</body>
</html>
<%
    }
%>
