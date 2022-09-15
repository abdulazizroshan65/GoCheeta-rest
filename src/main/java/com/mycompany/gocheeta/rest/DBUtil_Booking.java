/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.gocheeta.rest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Abdulaziz
 */
public class DBUtil_Booking {
    static final String DB_URL = "jdbc:mysql://localhost:3306/gocheeta?autoReconnect=true&useSSL=false";
    static final String USER = "icbt";
    static final String PASS = "icbt";
    
    public Bookings getCBooking(String email) {
        Bookings bk = new Bookings();
         try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bookings WHERE CustomerEmail='" + email +"'");
            resultSet.next();
            
            bk.setId(resultSet.getInt("id"));
            bk.setDatetime(resultSet.getString("datetime"));
            bk.setCustomerEmail(resultSet.getString("customerEmail"));
            bk.setDriverEmail(resultSet.getString("driverEmail"));
            bk.setVehicleNo(resultSet.getString("vehicleNo"));
            bk.setStatus(resultSet.getString("status"));
            bk.setPickup(resultSet.getString("pickup"));
            bk.setDrop(resultSet.getString("drop"));
            bk.setDistance(resultSet.getInt("distance"));
            bk.setFare(resultSet.getInt("fare"));
            bk.setFeedback(resultSet.getString("feedback"));
        } catch(Exception e) {
            System.out.println(e);
        } 
        return bk;
    }
    
    public Bookings getDBookings(String email) {
        Bookings bk = new Bookings();
         try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bookings WHERE DriverEmail='" + email +"'");
            resultSet.next();
            
            bk.setId(resultSet.getInt("id"));
            bk.setDatetime(resultSet.getString("datetime"));
            bk.setCustomerEmail(resultSet.getString("customerEmail"));
            bk.setDriverEmail(resultSet.getString("driverEmail"));
            bk.setVehicleNo(resultSet.getString("vehicleNo"));
            bk.setStatus(resultSet.getString("status"));
            bk.setPickup(resultSet.getString("pickup"));
            bk.setDrop(resultSet.getString("drop"));
            bk.setDistance(resultSet.getInt("distance"));
            bk.setFare(resultSet.getInt("fare"));
            bk.setFeedback(resultSet.getString("feedback"));
        } catch(Exception e) {
            System.out.println(e);
        } 
        return bk;
    }
    
    public List<Bookings> getBookings() {
        List<Bookings> bookings = new ArrayList<>();
         try {             
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bookings;");
            while(resultSet.next()) {
                Bookings bk = new Bookings();
                bk.setId(resultSet.getInt("id"));
                bk.setDatetime(resultSet.getString("datetime"));
                bk.setCustomerEmail(resultSet.getString("customerEmail"));
                bk.setDriverEmail(resultSet.getString("driverEmail"));
                bk.setVehicleNo(resultSet.getString("vehicleNo"));
                bk.setStatus(resultSet.getString("status"));
                bk.setPickup(resultSet.getString("pickup"));
                bk.setDrop(resultSet.getString("drop"));
                bk.setDistance(resultSet.getInt("distance"));
                bk.setFare(resultSet.getInt("fare"));
                bk.setFeedback(resultSet.getString("feedback"));
                bookings.add(bk);
            }
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return bookings;
    }
    
    public boolean newBooking(Bookings bk) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("INSERT INTO `bookings` VALUES (" + bk.getId()+ ", '" + bk.getDatetime()+ "', '" + bk.getCustomerEmail()+ "', '" + bk.getDriverEmail()+ "', '" + bk.getVehicleNo()+ "', '" + bk.getStatus()+ "', '" + bk.getPickup()+ "', '" + bk.getDrop()+ "', " + bk.getDistance() + ", " + bk.getFare() + ", '" + bk.getFeedback()+ "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
}
