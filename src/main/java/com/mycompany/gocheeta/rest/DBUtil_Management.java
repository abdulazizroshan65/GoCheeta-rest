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
public class DBUtil_Management {
    static final String DB_URL = "jdbc:mysql://localhost:3306/gocheeta?autoReconnect=true&useSSL=false";
    static final String USER = "icbt";
    static final String PASS = "icbt";
    
    public Users getCustomer(String email) {
        Users u = new Users();
         try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM customers WHERE Email='" + email +"'");
            resultSet.next();
            
            u.setEmail(resultSet.getString("email"));
            u.setPassword(resultSet.getString("password"));
            u.setName(resultSet.getString("name"));
            u.setBranch(resultSet.getString("branch"));
            u.setTelephone(resultSet.getString("telephone"));
            u.setNoOfTrips(resultSet.getInt("NoOfTrips"));
            u.setStatus(resultSet.getString("status"));
        } catch(Exception e) {
            System.out.println(e);
        } 
        return u;
    }
    
    public Users getDriver(String email) {
        Users u = new Users();
         try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM drivers WHERE Email='" + email +"'");
            resultSet.next();
            
            u.setEmail(resultSet.getString("email"));
            u.setPassword(resultSet.getString("password"));
            u.setName(resultSet.getString("name"));
            u.setBranch(resultSet.getString("branch"));
            u.setTelephone(resultSet.getString("telephone"));
            u.setStatus(resultSet.getString("status"));
            u.setNoOfVehicles(resultSet.getInt("NoOfVehicles"));
            u.setNoOfTrips(resultSet.getInt("NoOfTrips"));
            u.setRating(resultSet.getInt("rating"));
        } catch(Exception e) {
            System.out.println(e);
        } 
        return u;
    }
    
    public Users getAdmin(String email) {
        Users u = new Users();
         try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM admins WHERE Email='" + email +"'");
            resultSet.next();
            
            u.setEmail(resultSet.getString("email"));
            u.setPassword(resultSet.getString("password"));
            u.setName(resultSet.getString("name"));
            u.setBranch(resultSet.getString("branch"));
        } catch(Exception e) {
            System.out.println(e);
        } 
        return u;
    }
    
    public List<Users> getCustomers() {
        List<Users> customers = new ArrayList<>();
         try {             
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM customers;");
            while(resultSet.next()) {
                Users u = new Users();
                u.setEmail(resultSet.getString("email"));
                u.setPassword(resultSet.getString("password"));
                u.setName(resultSet.getString("name"));
                u.setBranch(resultSet.getString("branch"));
                u.setTelephone(resultSet.getString("telephone"));
                u.setNoOfTrips(resultSet.getInt("noOfTrips"));
                u.setStatus(resultSet.getString("status"));
                customers.add(u);
            }
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return customers;
    }
    
    public List<Users> getDrivers() {
        List<Users> drivers = new ArrayList<>();
         try {             
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM drivers;");
            while(resultSet.next()) {
                Users u = new Users();
                u.setEmail(resultSet.getString("email"));
                u.setPassword(resultSet.getString("password"));
                u.setName(resultSet.getString("name"));
                u.setBranch(resultSet.getString("branch"));
                u.setTelephone(resultSet.getString("telephone"));
                u.setStatus(resultSet.getString("status"));
                u.setNoOfTrips(resultSet.getInt("noOfTrips"));
                u.setNoOfVehicles(resultSet.getInt("noOfVehicles"));
                u.setRating(resultSet.getInt("rating"));
                drivers.add(u);
            }
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return drivers;
    }
    
    public List<Users> getAdmins() {
        List<Users> admins = new ArrayList<>();
         try {             
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM admins;");
            while(resultSet.next()) {
                Users u = new Users();
                u.setEmail(resultSet.getString("email"));
                u.setPassword(resultSet.getString("password"));
                u.setName(resultSet.getString("name"));
                u.setBranch(resultSet.getString("branch"));
                admins.add(u);
            }
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return admins;
    }
    
    public boolean addCustomer(Users u) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("INSERT INTO `customers` VALUES ('" + u.getEmail() + "', '" + u.getPassword() + "', '" + u.getName() + "', '" + u.getBranch() + "', '" + u.getTelephone() + "', " + u.getNoOfTrips() + ", '" + u.getStatus() + "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean addDriver(Users u) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("INSERT INTO `drivers` VALUES ('" + u.getEmail() + "', '" + u.getPassword() + "', '" + u.getName() + "', '" + u.getBranch() + "', '" + u.getTelephone() + "', '" + u.getStatus() + "', " + u.getNoOfVehicles() + ", " + u.getNoOfTrips() + ", " +u.getRating() + ")");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean addAdmin(Users u) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("INSERT INTO `admins` VALUES ('" + u.getEmail() + "', '" + u.getPassword() + "', '" + u.getName() + "', '" + u.getBranch() + "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateCustomer(Users u) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("UPDATE `customers` SET `Password` = '" + u.getPassword()+ "', `Name` = '" +u.getName()+ "', `Branch` = '" +u.getBranch()+ "', `Telephone` = '" +u.getTelephone()+ "', `NoOfTrips` = " +u.getNoOfTrips()+ ", `Status` = '" +u.getStatus()+ "' WHERE `Email` = '" + u.getEmail()+ "';");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateDriver(Users u) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("UPDATE `drivers` SET `Password` = '" + u.getPassword()+ "', `Name` = '" +u.getName()+ "', `Branch` = '" +u.getBranch()+ "', `Telephone` = '" +u.getTelephone()+ "', `Status` = '" +u.getStatus()+ "', `NoOfTrips` = " +u.getNoOfTrips()+ ", `NoOfVehicles` = " +u.getNoOfVehicles()+ ", `Rating` = " + u.getRating()+ " WHERE `Email` = '" + u.getEmail()+ "';");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateAdmin(Users u) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("UPDATE `admins` SET `Password` = '" + u.getPassword()+ "', `Name` = '" +u.getName()+ "', `Branch` = '" +u.getBranch()+ "' WHERE `Email` = '" + u.getEmail()+ "';");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteCustomer(String email) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("DELETE FROM `customers` WHERE (`Email` = '" + email + "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteDriver(String email) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("DELETE FROM `drivers` WHERE (`Email` = '" + email + "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteAdmin(String email) {
        int rowsAffected = 0;
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement statement = conn.createStatement();
            rowsAffected = statement.executeUpdate("DELETE FROM `admins` WHERE (`Email` = '" + email + "')");
        } catch(Exception e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
}
