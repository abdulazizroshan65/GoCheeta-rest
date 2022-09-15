/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.gocheeta.rest;

/**
 *
 * @author abdulaziz
 */
public class Bookings {
    private int id;
    private String datetime;
    private String customerEmail;
    private String driverEmail;
    private String vehicleNo;
    private String status;
    private String pickup;
    private String drop;
    private int distance;
    private int fare;
    private String feedback;

    public Bookings(int id, String datetime, String customerEmail, String driverEmail, String vehicleNo, String status, String pickup, String drop, int distance, int fare, String feedback) {
        this.id = id;
        this.datetime = datetime;
        this.customerEmail = customerEmail;
        this.driverEmail = driverEmail;
        this.vehicleNo = vehicleNo;
        this.status = status;
        this.pickup = pickup;
        this.drop = drop;
        this.distance = distance;
        this.fare = fare;
        this.feedback = feedback;
    } 
    
    public Bookings() {
        this.id = 0;
        this.datetime = "";
        this.customerEmail = "";
        this.driverEmail = "";
        this.vehicleNo = "";
        this.status = "";
        this.pickup = "";
        this.drop = "";
        this.distance = 0;
        this.fare = 0;
        this.feedback = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getDriverEmail() {
        return driverEmail;
    }

    public void setDriverEmail(String driverEmail) {
        this.driverEmail = driverEmail;
    }

    public String getVehicleNo() {
        return vehicleNo;
    }

    public void setVehicleNo(String vehicleNo) {
        this.vehicleNo = vehicleNo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPickup() {
        return pickup;
    }

    public void setPickup(String pickup) {
        this.pickup = pickup;
    }

    public String getDrop() {
        return drop;
    }

    public void setDrop(String drop) {
        this.drop = drop;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public int getFare() {
        return fare;
    }

    public void setFare(int fare) {
        this.fare = fare;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    
    
}

