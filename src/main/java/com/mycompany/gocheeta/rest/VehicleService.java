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
@Path("vehicle")
public class VehicleService {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getVehicles() {
        DBUtil_Branch util = new DBUtil_Branch();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getVehicles());
    }
    
    @GET
    @Path("/{plateno}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getVehicle(@PathParam("plateno") String plateno) {
        DBUtil_Branch util = new DBUtil_Branch();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getVehicle(plateno));
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addVehicle(String json) {
        Gson gson = new GsonBuilder().create();
        BranchInfo vehicle = gson.fromJson(json, BranchInfo.class);
        DBUtil_Branch util = new DBUtil_Branch();
        boolean result = util.addVehicle(vehicle);    
        if (result) {
            return Response.status(201).entity("Successfully added").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
    
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateVehicle(String json) {
        Gson gson = new GsonBuilder().create();
        BranchInfo vehicle = gson.fromJson(json, BranchInfo.class);
        DBUtil_Branch util = new DBUtil_Branch();
        boolean result = util.updateVehicle(vehicle);    
        if (result) {
            return Response.status(200).entity("Successfully updated").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
    
    @DELETE
    @Path("/{plateno}")
    public Response deleteVehicle(@PathParam("plateno") String plateno) {
        DBUtil_Branch util = new DBUtil_Branch();
        boolean result = util.deleteVehicle(plateno);    
        if (result) {
            return Response.status(200).entity("Successfully deleted").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
}
