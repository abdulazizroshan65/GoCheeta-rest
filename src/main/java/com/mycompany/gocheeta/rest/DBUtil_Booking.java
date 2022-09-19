/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.gocheeta.rest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Abdulaziz
 */
public class DBUtil_Booking {
    private final Statement statement = DBConnect.getInstance().statement;
    static final String DB_URL = "jdbc:mysql://localhost:3306/gocheeta?autoReconnect=true&useSSL=false";
    static final String USER = "icbt";
    static final String PASS = "icbt";
    
    public List<Bookings> getCBooking(String email) {
        List<Bookings> cbookings = new ArrayList<>();
         try {
//            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            Statement statement = conn.createStatement();
                
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bookings WHERE CustomerEmail='" + email +"'");
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
                cbookings.add(bk);
            }    
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return cbookings;
    }
    
    public List<Bookings> getDBookings(String email) {
        List<Bookings> dbookings = new ArrayList<>();
         try {            
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bookings WHERE DriverEmail='" + email +"'");
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
                dbookings.add(bk);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return dbookings;
    }
    
    public List<Bookings> getBookings() {
        List<Bookings> bookings = new ArrayList<>();
         try {             
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
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return bookings;
    }
    
    public boolean newBooking(Bookings bk) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("INSERT INTO `bookings` VALUES (" + bk.getId()+ ", '" + bk.getDatetime()+ "', '" + bk.getCustomerEmail()+ "', '" + bk.getDriverEmail()+ "', '" + bk.getVehicleNo()+ "', '" + bk.getStatus()+ "', '" + bk.getPickup()+ "', '" + bk.getDrop()+ "', " + bk.getDistance() + ", " + bk.getFare() + ", '" + bk.getFeedback()+ "')");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
}
