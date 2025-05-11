<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Event Dashboard</title>
  <!-- Include Font Awesome from CDN -->
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
      animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .dashboard-container {
      background-color: #fff;
      padding: 50px 40px;
      border-radius: 20px;
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
      text-align: center;
      max-width: 480px;
      width: 100%;
    }

    h2 {
      color: #6c5ce7;
      font-size: 28px;
      margin-bottom: 35px;
      letter-spacing: 1px;
    }

    .action-btn {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 15px;
      width: 100%;
      padding: 14px;
      margin: 12px 0;
      background-color: #6c5ce7;
      color: white;
      text-decoration: none;
      border-radius: 12px;
      font-size: 18px;
      font-weight: 600;
      transition: transform 0.25s ease, background-color 0.3s;
      box-shadow: 0 4px 10px rgba(108, 92, 231, 0.2);
    }

    .action-btn:hover {
      background-color: #5a4dcf;
      transform: translateY(-2px);
    }

    .icon {
      font-size: 22px; /* Increase icon size */
    }
  </style>
</head>
<body>
  <div class="dashboard-container">
    <h2><i class="fas fa-calendar-alt event-icon"></i> Event Management</h2>

    <a href="add-event.html" class="action-btn"><i class="fas fa-plus-circle icon"></i> Add Event</a>
    <a href="edit-event.jsp" class="action-btn"><i class="fas fa-edit icon"></i> Edit Event</a>
    <a href="delete-event.jsp" class="action-btn"><i class="fas fa-trash-alt icon"></i> Delete Event</a>
    <a href="view-events.jsp" class="action-btn"><i class="fas fa-clipboard-list icon"></i> View All Events</a>
  </div>
</body>
</html>
