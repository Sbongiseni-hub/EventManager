<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Added</title>
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
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            max-width: 500px;
            text-align: center;
            width: 100%;
        }

        h2 {
            color: #6c5ce7;
            font-size: 32px;
            margin-bottom: 20px;
        }

        .message {
            color: #2ecc71;
            font-size: 18px;
            margin-bottom: 30px;
        }

        .home-button {
            background-color: #6c5ce7;
            color: white;
            padding: 12px 24px;
            font-size: 18px;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .home-button:hover {
            background-color: #5a4dcf;
        }

        .icon {
            font-size: 22px;
            margin-right: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2><i class="fas fa-check-circle"></i> Event Added Successfully!</h2>
        <p class="message">Your event has been added successfully. You can now manage it from your dashboard.</p>

        <!-- Link back to the home page -->
        <a href="index.html" class="home-button"><i class="fas fa-home icon"></i> Go to Home</a>
    </div>

</body>
</html>
