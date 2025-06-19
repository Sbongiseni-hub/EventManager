<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="za.ac.tut.model.entity.Event" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event List</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            flex-direction: column;
            padding-top: 50px;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 20px;
        }

        h2 {
            color: #6c5ce7;
            font-size: 32px;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #6c5ce7;
            color: white;
        }

        td {
            background-color: #f8f8f8;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        tr:hover td {
            background-color: #ddd;
        }

        .back-btn {
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
            display: inline-block;
            margin-top: 20px;
        }

        .back-btn:hover {
            background-color: #5a4dcf;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2><i class="fas fa-calendar-alt"></i> All Events</h2>

        <!-- Event Table -->
        <table>
            <thead>
                <tr>
                    <th>Event Name</th>
                    <th>Event Date</th>
                    <th>Location</th>
                    <th>Category</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Get the list of events from the request attribute
                    List<Event> events = (List<Event>) request.getAttribute("event");
                    
                    // Loop through the events list and display each event in the table
                    if (events != null) {
                        for (Event event : events) {
                %>
                    <tr>
                        <td><%= event.getEventName() %></td>
                        <td><%= event.getEventDate() %></td>
                        <td><%= event.getEventLocation() %></td>
                        <td><%= event.getEventCategory() %></td>
                        <td><%= event.getEventDiscription() %></td>
                    </tr>
                <% 
                        }
                    } else {
                %>
                    <tr>
                        <td colspan="5">No events found.</td>
                    </tr>
                <% 
                    }
                %>
            </tbody>
        </table>

        <!-- Back to Home Button -->
        <a href="index.html" class="back-btn"><i class="fas fa-home"></i> Back to Home</a>
    </div>

</body>
</html>
