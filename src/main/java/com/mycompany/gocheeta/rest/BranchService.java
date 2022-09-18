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
@Path("branch")
public class BranchService {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getBranches() {
        DBUtil_Branch util = new DBUtil_Branch();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getBranches());
    }
    
    
    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getBranch(@PathParam("id") int id) {
        DBUtil_Branch util = new DBUtil_Branch();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getBranch(id));
    }
    
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateBranch(String json) {
        Gson gson = new GsonBuilder().create();
        BranchInfo branch = gson.fromJson(json, BranchInfo.class);
        DBUtil_Branch util = new DBUtil_Branch();
        boolean result = util.updateBranch(branch);    
        if (result) {
            return Response.status(200).entity("Successfully updated").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
    
    @DELETE
    @Path("/{id}")
    public Response deleteBranch(@PathParam("email") int id) {
        DBUtil_Branch db = new DBUtil_Branch();
        boolean result = db.deleteBranch(id);    
        if (result) {
            return Response.status(200).entity("Successfully deleted").build();
        } else {
            return Response.status(501).entity("Error occurred").build();
        }
    }
}
