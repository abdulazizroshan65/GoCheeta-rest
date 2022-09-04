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
@Path("drivers")
public class DriverService {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getDrivers() {
        DBUtil_Users db = new DBUtil_Users();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(db.getCustomers());
    }
    
    
    @GET
    @Path("/{email}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getCustomer(@PathParam("email") String email) {
        DBUtil_Users db = new DBUtil_Users();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(db.getCustomer(email));
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addCustomer(String json) {
        Gson gson = new GsonBuilder().create();
        Users u = gson.fromJson(json, Users.class);
        DBUtil_Users db = new DBUtil_Users();
        boolean result = db.addCustomer(u);    
        if (result) {
            return Response.status(201).entity("Successfully added").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
    
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateCustomer(String json) {
        Gson gson = new GsonBuilder().create();
        Users u = gson.fromJson(json, Users.class);
        DBUtil_Users db = new DBUtil_Users();
        boolean result = db.updateCustomer(u);   
        System.out.print(u.getPassword());
        if (result) {
            return Response.status(200).entity("Successfully updated").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
    
    @DELETE
    @Path("/{email}")
    public Response deleteCustomer(@PathParam("email") String email) {
        DBUtil_Users db = new DBUtil_Users();
        boolean result = db.deleteCustomer(email);    
        if (result) {
            return Response.status(200).entity("Successfully deleted").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
}
