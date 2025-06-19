<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="za.ac.tut.model.entity.Event" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Event Management System</title>
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

    body {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
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
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
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
      padding: 8px 16px;
      border-radius: 8px;
      transition: background 0.3s ease;
    }

    nav a:hover {
      background-color: rgba(255, 255, 255, 0.2);
    }

    .main-content {
      flex: 1;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 40px 20px;
    }

    .event-list {
      margin-top: 20px;
      width: 100%;
      max-width: 1100px;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 30px;
    }

    .event-card {
      background-color: white;
      border-radius: 15px;
      padding: 24px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .event-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 6px 20px rgba(0,0,0,0.12);
    }

    .event-card h2 {
      margin-top: 0;
      margin-bottom: 12px;
      color: #6c5ce7;
      font-size: 22px;
    }

    .event-card p {
      margin: 6px 0;
      line-height: 1.5;
    }

    .no-events {
      font-size: 18px;
      color: #999;
      margin-top: 40px;
    }

    footer {
      text-align: center;
      padding: 20px;
      background-color: #6c5ce7;
      color: white;
      border-top-left-radius: 20px;
      border-top-right-radius: 20px;
      margin-top: auto;
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

<div class="main-content">
  <h2 style="color:#6c5ce7;">Upcoming Events</h2>

  <div class="event-list">
    <%
      List<Event> events = (List<Event>) request.getAttribute("event");
      SimpleDateFormat sdf = new SimpleDateFormat("MMMM dd, yyyy");

      if (events != null && !events.isEmpty()) {
        for (Event event : events) {
    %>
      <div class="event-card">
        <h2><%= event.getEventName() %></h2>
        <p><strong>Date:</strong> <%= sdf.format(event.getEventDate()) %></p>
        <p><strong>Location:</strong> <%= event.getEventLocation() %></p>
        <p><strong>Category:</strong> <%= event.getEventCategory() %></p>
        <p><strong>Description:</strong> <%= event.getEventDiscription() %></p>
      </div>
    <%
        }
      } else {
    %>
      <p class="no-events">No events found.</p>
    <%
      }
    %>
  </div>
</div>

<footer>
  &copy; 2025 Event Management System. All rights reserved.
</footer>

</body>
</html>
