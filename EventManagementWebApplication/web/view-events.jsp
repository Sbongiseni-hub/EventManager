<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Events</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        h2 {
            color: #6c5ce7;
            font-size: 32px;
            margin-bottom: 30px;
        }

        .view-all-button {
            background-color: #6c5ce7;
            color: white;
            padding: 12px 24px;
            font-size: 18px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .view-all-button:hover {
            background-color: #5a4dcf;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2><i class="fas fa-calendar-alt"></i> View All Events</h2>

        <!-- Button to View All Events -->
        <a href="viewAllServlet.do" class="view-all-button">
            <i class="fas fa-eye"></i> Click to View All Events
        </a>
    </div>

</body>
</html>
