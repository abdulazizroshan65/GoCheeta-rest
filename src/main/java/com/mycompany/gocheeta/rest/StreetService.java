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
@Path("street")
public class StreetService {
    @GET
    @Path("/{branch}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getStreet(@PathParam("branch") String branch) {
        DBUtil_Branch util = new DBUtil_Branch();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(util.getStreet(branch));
    }
}
