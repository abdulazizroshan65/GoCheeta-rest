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
public class DBUtil_Branch {
    private final Statement statement = DBConnect.getInstance().statement;
    
    public BranchInfo getBranch(int id) {
        BranchInfo b = new BranchInfo();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM branch WHERE ID=" + id);
            resultSet.next();
            
            b.setId(resultSet.getInt("id"));
            b.setName(resultSet.getString("name"));
            b.setNoOfDrivers(resultSet.getInt("noOfDrivers"));
            b.setNoOfCustomers(resultSet.getInt("noOfCustomers"));
            b.setNoOfAdmins(resultSet.getInt("noOfAdmins"));
            b.setNoOfTrips(resultSet.getInt("noOfTrips"));
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return b;
    }
    
    public BranchInfo getCategory(int id) {
        BranchInfo b = new BranchInfo();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM category WHERE ID=" + id);
            resultSet.next();
            
            b.setId(resultSet.getInt("id"));
            b.setType(resultSet.getString("type"));
            b.setUnitPrice(resultSet.getInt("unitPrice"));
            b.setPassengers(resultSet.getInt("passengers"));
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return b;
    }
    
    public BranchInfo getVehicle(String plateno) {
        BranchInfo b = new BranchInfo();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM vehicles WHERE PlateNo='" + plateno +"'");
            resultSet.next();
            
            b.setPlateno(resultSet.getString("plateno"));
            b.setCategoryId(resultSet.getInt("categoryId"));
            b.setDriverName(resultSet.getString("driverName"));
            b.setNoOfTrips(resultSet.getInt("noOfTrips"));
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return b;
    }
    
    public List<BranchInfo> getStreet(String branch) {
        List<BranchInfo> branches = new ArrayList<>();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM charges WHERE Branch='" + branch +"'");
            while(resultSet.next()) {
                BranchInfo b = new BranchInfo();
                b.setCombination(resultSet.getInt("combination"));
                b.setBranch(resultSet.getString("branch"));
                b.setStart(resultSet.getString("start"));
                b.setStop(resultSet.getString("stop"));
                b.setDistance(resultSet.getInt("distance"));
                branches.add(b);
            };
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return branches;
    }
    
    public List<BranchInfo> getCharge(int id) {
        List<BranchInfo> branches = new ArrayList<>();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM charges WHERE ID=" + id);
            while(resultSet.next()) {
                BranchInfo b = new BranchInfo();
                b.setCombination(resultSet.getInt("combination"));
                b.setBranch(resultSet.getString("branch"));
                b.setStart(resultSet.getString("start"));
                b.setStop(resultSet.getString("stop"));
                b.setDistance(resultSet.getInt("distance"));
                branches.add(b);
            };
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return branches;
    }
    
    public List<BranchInfo> getBranches() {
        List<BranchInfo> branches = new ArrayList<>();
         try {             
            ResultSet resultSet = statement.executeQuery("SELECT * FROM branch;");
            while(resultSet.next()) {
                BranchInfo b = new BranchInfo();
                b.setId(resultSet.getInt("id"));
                b.setName(resultSet.getString("name"));
                b.setNoOfDrivers(resultSet.getInt("noOfDrivers"));
                b.setNoOfCustomers(resultSet.getInt("noOfCustomers"));
                b.setNoOfAdmins(resultSet.getInt("noOfAdmins"));
                b.setNoOfTrips(resultSet.getInt("noOfTrips"));
                branches.add(b);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return branches;
    }    
    
    public List<BranchInfo> getCategories() {
        List<BranchInfo> categories = new ArrayList<>();
         try {             
            ResultSet resultSet = statement.executeQuery("SELECT * FROM category;");
            while(resultSet.next()) {
                BranchInfo b = new BranchInfo();
                b.setId(resultSet.getInt("id"));
                b.setType(resultSet.getString("type"));
                b.setUnitPrice(resultSet.getInt("unitPrice"));
                b.setPassengers(resultSet.getInt("passengers"));
                categories.add(b);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return categories;
    } 
    
    public List<BranchInfo> getVehicles() {
        List<BranchInfo> vehicles = new ArrayList<>();
         try {             
            ResultSet resultSet = statement.executeQuery("SELECT * FROM vehicles;");
            while(resultSet.next()) {
                BranchInfo b = new BranchInfo();
                b.setPlateno(resultSet.getString("plateno"));
                b.setCategoryId(resultSet.getInt("categoryId"));
                b.setDriverName(resultSet.getString("driverName"));
                b.setNoOfTrips(resultSet.getInt("noOfTrips"));
                vehicles.add(b);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return vehicles;
    } 
    
    public boolean addCategory(BranchInfo b) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("INSERT INTO `category` VALUES (" + b.getId()+ ", '" + b.getType()+ "', " + b.getUnitPrice()+ ", " + b.getPassengers()+ ")");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean addVehicle(BranchInfo b) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("INSERT INTO `vehicles` VALUES ('" + b.getPlateno()+ "', " + b.getCategoryId()+ ", '" + b.getDriverName()+ "', " + b.getNoOfTrips()+ ")");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateBranch(BranchInfo b) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("UPDATE `branch` SET `Name` = '" + b.getName()+ "', `NoOfDrivers` = " +b.getNoOfDrivers()+ ", `NoOfCustomers` = " +b.getNoOfCustomers()+ ", `NoOfAdmins` = " +b.getNoOfAdmins()+ ", `NoOfTrips` = " +b.getNoOfTrips()+ " WHERE `ID` = " + b.getId()+ ";");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateCategory(BranchInfo b) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("UPDATE `category` SET `Type` = '" + b.getType()+ "', `Unit Price` = " +b.getUnitPrice()+ ", `Passengers` = " +b.getPassengers()+ " WHERE `ID` = " + b.getId()+ ";");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateVehicle(BranchInfo b) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("UPDATE `vehicles` SET `CategoryID` = " + b.getCategoryId()+ ", `DriverName` = '" +b.getDriverName()+ "', `NoOfTrips` = " +b.getNoOfTrips()+ " WHERE `PlateNo` = '" + b.getPlateno()+ "';");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteBranch(int id) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("DELETE FROM `branch` WHERE (`ID` = " + id + ")");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteCategory(int id) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("DELETE FROM `category` WHERE (`ID` = " + id + ")");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteVehicle(String plateno) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("DELETE FROM `vehicles` WHERE (`PlateNo` = '" + plateno + "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
}
