/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
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
public class AddEventServlet extends HttpServlet {
@EJB EventFacadeLocal efl; 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        String eventName = request.getParameter("eventName");
        String eventLocation = request.getParameter("eventLocation");
        String eventCategory = request.getParameter("eventCategory");
        String eventDescription = request.getParameter("eventDescription");
        
        String eventDate = request.getParameter("eventDate");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date captureDate = sdf.parse(eventDate);
        
        Event ev = createEvent(eventName, captureDate, eventLocation, eventCategory, eventDescription);
        efl.create(ev);
        
            RequestDispatcher disp = request.getRequestDispatcher("added-event-outcome.jsp");
            disp.forward(request, response);
        
        } catch (ParseException ex) {
            Logger.getLogger(AddEventServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private Event createEvent(String eventName, Date eventDate, String eventLocation, String eventCategory, String eventDescription){
        Event event = new Event();
        event.setEventName(eventName);
        event.setEventDate(eventDate);
        event.setEventLocation(eventLocation);
        event.setEventCategory(eventCategory);
        event.setEventDiscription(eventDescription);
        
        return event;
    }

}
