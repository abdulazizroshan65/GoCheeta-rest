/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.gocheeta.rest;

/**
 *
 * @author abdulaziz
 */
public class Users {
    private String email;
    private String password;
    private String name;
    private String branch;
    private String telephone;
    private int noOfTrips;
    private String status;
    private int noOfVehicles;
    private int rating;
    
    public Users() {
        this.email = "";
        this.password = "";
        this.name = "";
        this.branch = "";
        this.telephone = "";
        this.noOfTrips = 0;
        this.status = "";
        this.noOfVehicles = 1;
        this.rating = 0;
    }

    public Users(String email, String password, String name, String branch, String telephone, int noOfTrips, String status, int noOfVehicles, int rating) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.branch = branch;
        this.telephone = telephone;
        this.noOfTrips = noOfTrips;
        this.status = status;
        this.noOfVehicles = noOfVehicles;
        this.rating = rating;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public int getNoOfTrips() {
        return noOfTrips;
    }

    public void setNoOfTrips(int noOfTrips) {
        this.noOfTrips = noOfTrips;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getNoOfVehicles() {
        return noOfVehicles;
    }

    public void setNoOfVehicles(int noOfVehicles) {
        this.noOfVehicles = noOfVehicles;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
    
}

