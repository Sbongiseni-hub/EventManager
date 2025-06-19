<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Delete Event | Event Management System</title>
  <style>
    * {
      box-sizing: border-box;
    }

    html, body {
      margin: 0;
      padding: 0;
      height: 100%;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f0f2f5;
      color: #333;
    }

    header {
      background-color: #6c5ce7;
      color: white;
      padding: 30px 60px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
    }

    header h1 {
      margin: 0;
      font-size: 32px;
    }

    nav a {
      color: white;
      margin-left: 30px;
      text-decoration: none;
      font-weight: 600;
      font-size: 16px;
      transition: opacity 0.3s;
    }

    nav a:hover {
      opacity: 0.85;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 60px 20px;
      animation: fadeIn 1.5s ease;
      min-height: calc(100vh - 160px);
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .card {
      background-color: #fff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 450px;
      text-align: center;
    }

    .card h2 {
      color: #6c5ce7;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
      font-size: 16px;
      text-align: left;
    }

    input[type="number"] {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      border-radius: 8px;
      border: 1px solid #ccc;
      margin-bottom: 20px;
    }

    button {
      background-color: #6c5ce7;
      color: white;
      border: none;
      padding: 14px 28px;
      font-size: 16px;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;
      width: 100%;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #5947d4;
    }

    .back-link {
      margin-top: 20px;
      display: block;
      text-decoration: none;
      color: #6c5ce7;
      font-weight: bold;
    }

    .back-link:hover {
      text-decoration: underline;
    }

    footer {
      text-align: center;
      padding: 20px;
      background-color: #6c5ce7;
      color: white;
      border-top-left-radius: 20px;
      border-top-right-radius: 20px;
      position: relative;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>

<header>
  <h1>Event Management System</h1>
  <nav>
    <a href="index.html">Home</a>
    <a href="login.html">Admin Login</a>
  </nav>
</header>

<div class="container">
  <div class="card">
    <h2>Delete Event</h2>
    <form action="deleteEventServlet" method="post">
      <label for="eventId">Enter Event ID:</label>
      <input type="number" id="eventId" name="eventId" required placeholder="e.g. 101" />
      <button type="submit">Delete Event</button>
    </form>
    <a class="back-link" href="index.html">← Back to Home</a>
  </div>
</div>

<footer>
  &copy; 2025 Event Management System. All rights reserved.
</footer>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Delete Event | Event Management System</title>
  <style>
    * {
      box-sizing: border-box;
    }

    html, body {
      margin: 0;
      padding: 0;
      height: 100%;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f0f2f5;
      color: #333;
    }

    header {
      background-color: #6c5ce7;
      color: white;
      padding: 30px 60px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom-left-radius: 20px;
      border-bottom-right-radius: 20px;
    }

    header h1 {
      margin: 0;
      font-size: 32px;
    }

    nav a {
      color: white;
      margin-left: 30px;
      text-decoration: none;
      font-weight: 600;
      font-size: 16px;
      transition: opacity 0.3s;
    }

    nav a:hover {
      opacity: 0.85;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 60px 20px;
      animation: fadeIn 1.5s ease;
      min-height: calc(100vh - 160px);
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .card {
      background-color: #fff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 450px;
      text-align: center;
    }

    .card h2 {
      color: #6c5ce7;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
      font-size: 16px;
      text-align: left;
    }

    input[type="number"] {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      border-radius: 8px;
      border: 1px solid #ccc;
      margin-bottom: 20px;
    }

    button {
      background-color: #6c5ce7;
      color: white;
      border: none;
      padding: 14px 28px;
      font-size: 16px;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;
      width: 100%;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #5947d4;
    }

    .back-link {
      margin-top: 20px;
      display: block;
      text-decoration: none;
      color: #6c5ce7;
      font-weight: bold;
    }

    .back-link:hover {
      text-decoration: underline;
    }

    footer {
      text-align: center;
      padding: 20px;
      background-color: #6c5ce7;
      color: white;
      border-top-left-radius: 20px;
      border-top-right-radius: 20px;
      position: relative;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>

<header>
  <h1>Event Management System</h1>
  <nav>
    <a href="index.html">Home</a>
    <a href="login.html">Admin Login</a>
  </nav>
</header>

<div class="container">
  <div class="card">
    <h2>Delete Event</h2>
    <form action="deleteEventServlet.do" method="post">
      <label for="eventId">Enter Event ID:</label>
      <input type="number" id="eventId" name="eventId" required placeholder="e.g. 101" />
      <button type="submit">Delete Event</button>
    </form>
    <a class="back-link" href="index.html">← Back to Home</a>
  </div>
</div>

<footer>
  &copy; 2025 Event Management System. All rights reserved.
</footer>

</body>
</html>
