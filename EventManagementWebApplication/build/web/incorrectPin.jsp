<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incorrect PIN</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .error-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            color: #e74c3c;
            margin-bottom: 20px;
        }

        .error-message {
            color: #e74c3c;
            font-size: 1em;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            text-align: left;
            font-weight: 500;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #6c5ce7;
        }

        input[type="submit"] {
            background-color: #6c5ce7;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #5a4dcf;
        }

        .retry-button {
            display: inline-block;
            margin-top: 15px;
            background-color: #6c5ce7;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 8px;
            transition: background 0.3s;
        }

        .retry-button:hover {
            background-color: #5a4dcf;
        }
    </style>
</head>
<body>
<div class="error-container">
    <h2>Login Error</h2>

    <!-- Display error message -->
    <c:if test="${not empty errorMessage}">
        <p class="error-message">${errorMessage}</p>
    </c:if>

    <p>Please enter your username and PIN again:</p>

    <!-- Retry Login Form -->
    <form action="LoginServlet.do" method="post">
        <label>Username:</label>
        <input type="text" name="username" required>

        <label>Password (PIN):</label>
        <input type="password" name="password" required>

        <input type="submit" value="Retry">
    </form>

    <a href="login.html" class="retry-button">Go Back to Login</a>
</div>
</body>
</html>
