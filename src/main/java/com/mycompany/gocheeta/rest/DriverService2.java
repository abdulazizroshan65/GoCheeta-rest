/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.gocheeta.rest;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author thilan
 */
@Path("drivers2")
public class DriverService2 {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getDrivers() {
        DBUtil_Users db = new DBUtil_Users();
        Gson gson = new GsonBuilder().create();
        return gson.toJson(db.getDriversbyFilter());
    }
}
