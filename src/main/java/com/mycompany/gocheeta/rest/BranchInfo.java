/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.gocheeta.rest;

/**
 *
 * @author abdulaziz
 */
public class BranchInfo {
    private int id;
    private String type;
    private int unitPrice;
    private int passengers;
    private String plateno;
    private int categoryId;
    private String driverName;
    private int noOfTrips;
    private String name;
    private int noOfDrivers;
    private int noOfCustomers;
    private int noOfAdmins;
    private int combination;
    private String branch;
    private String start;
    private String stop;
    private int distance;

    public BranchInfo(int id, String type, int unitPrice, int passengers, String plateno, int categoryId, String driverName, int noOfTrips, String name, int noOfDrivers, int noOfCustomers, int noOfAdmins, int combination, String branch, String start, String stop, int distance) {
        this.id = id;
        this.type = type;
        this.unitPrice = unitPrice;
        this.passengers = passengers;
        this.plateno = plateno;
        this.categoryId = categoryId;
        this.driverName = driverName;
        this.noOfTrips = noOfTrips;
        this.name = name;
        this.noOfDrivers = noOfDrivers;
        this.noOfCustomers = noOfCustomers;
        this.noOfAdmins = noOfAdmins;
        this.combination = combination;
        this.branch = branch;
        this.start = start;
        this.stop = stop;
        this.distance = distance;
    }
    
    public BranchInfo() {
        this.id = 0;
        this.type = "";
        this.unitPrice = 0;
        this.passengers = 0;
        this.plateno = "";
        this.categoryId = 0;
        this.driverName = "";
        this.noOfTrips = 0;
        this.name = "";
        this.noOfDrivers = 0;
        this.noOfCustomers = 0;
        this.noOfAdmins = 0;
        this.combination = 0;
        this.branch = "";
        this.start = "";
        this.stop = "";
        this.distance = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getPassengers() {
        return passengers;
    }

    public void setPassengers(int passengers) {
        this.passengers = passengers;
    }

    public String getPlateno() {
        return plateno;
    }

    public void setPlateno(String plateno) {
        this.plateno = plateno;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public int getNoOfTrips() {
        return noOfTrips;
    }

    public void setNoOfTrips(int noOfTrips) {
        this.noOfTrips = noOfTrips;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNoOfDrivers() {
        return noOfDrivers;
    }

    public void setNoOfDrivers(int noOfDrivers) {
        this.noOfDrivers = noOfDrivers;
    }

    public int getNoOfCustomers() {
        return noOfCustomers;
    }

    public void setNoOfCustomers(int noOfCustomers) {
        this.noOfCustomers = noOfCustomers;
    }

    public int getNoOfAdmins() {
        return noOfAdmins;
    }

    public void setNoOfAdmins(int noOfAdmins) {
        this.noOfAdmins = noOfAdmins;
    }

    public int getCombination() {
        return combination;
    }

    public void setCombination(int combination) {
        this.combination = combination;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getStop() {
        return stop;
    }

    public void setStop(String stop) {
        this.stop = stop;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }
}

