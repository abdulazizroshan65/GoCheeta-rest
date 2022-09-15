/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.gocheeta.rest;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author Abdulaziz
 */
@Path("booking")
public class BookingService {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getBookings() {
        DBUtil_Booking util = new DBUtil_Booking();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getBookings());
    }
    
    
    @GET
    @Path("/{email}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getCBookings(@PathParam("email") String email) {
        DBUtil_Booking util = new DBUtil_Booking();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getCBooking(email));
    }
    
    @GET
    @Path("/{email}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getDBookings(@PathParam("email") String email) {
        DBUtil_Booking util = new DBUtil_Booking();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getDBookings(email));
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response newBooking(String json) {
        Gson gson = new GsonBuilder().create();
        Bookings bk = gson.fromJson(json, Bookings.class);
        DBUtil_Booking util = new DBUtil_Booking();
        boolean result = util.newBooking(bk);    
        if (result) {
            return Response.status(201).entity("Successfully added").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
}
