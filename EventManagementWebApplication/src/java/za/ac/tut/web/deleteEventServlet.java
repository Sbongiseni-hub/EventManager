/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.EventFacadeLocal;
import za.ac.tut.model.entity.Event;

/**
 *
 * @author DELL
 */
public class deleteEventServlet extends HttpServlet {
@EJB EventFacadeLocal efl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String eventId = request.getParameter("eventId");
//        Long id = Long.parseLong("eventId");
        
        if (eventId != null && !eventId.isEmpty()) {
            try {
                Long NewEventId = Long.parseLong(eventId);
                Event event = efl.find(NewEventId);
                if (event != null) {
                    efl.remove(event);  // Using the remove(Event event) method here
                    request.getSession().setAttribute("message", "Event deleted successfully.");
                } else {
                    request.getSession().setAttribute("message", "Event not found.");
                }
            } catch (NumberFormatException e) {
                request.getSession().setAttribute("message", "Invalid Event ID format.");
            }
        } else {
            request.getSession().setAttribute("message", "Event ID is required.");
        }
        response.sendRedirect("delete_event.jsp");
    }

}
