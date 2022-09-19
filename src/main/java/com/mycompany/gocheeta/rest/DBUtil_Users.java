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
public class DBUtil_Users {
    private final Statement statement = DBConnect.getInstance().statement;
    
    public Users getCustomer(String email) {
        Users u = new Users();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM customers WHERE Email='" + email +"'");
            resultSet.next();
            
            u.setEmail(resultSet.getString("email"));
            u.setPassword(resultSet.getString("password"));
            u.setName(resultSet.getString("name"));
            u.setBranch(resultSet.getString("branch"));
            u.setTelephone(resultSet.getString("telephone"));
            u.setNoOfTrips(resultSet.getInt("NoOfTrips"));
            u.setStatus(resultSet.getString("status"));
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return u;
    }
    
    public Users getDriver(String email) {
        Users u = new Users();
         try {
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
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return u;
    }
    
    public Users getAdmin(String email) {
        Users u = new Users();
         try {
            ResultSet resultSet = statement.executeQuery("SELECT * FROM admins WHERE Email='" + email +"'");
            resultSet.next();
            
            u.setEmail(resultSet.getString("email"));
            u.setPassword(resultSet.getString("password"));
            u.setName(resultSet.getString("name"));
            u.setBranch(resultSet.getString("branch"));
        } catch(SQLException e) {
            System.out.println(e);
        } 
        return u;
    }
    
    public List<Users> getCustomers() {
        List<Users> customers = new ArrayList<>();
         try {             
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
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return customers;
    }
    
    public List<Users> getDrivers() {
        List<Users> drivers = new ArrayList<>();
         try {             
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
                drivers.add(u);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return drivers;
    }
    
    public List<Users> getAdmins() {
        List<Users> admins = new ArrayList<>();
         try {             
            ResultSet resultSet = statement.executeQuery("SELECT * FROM admins;");
            while(resultSet.next()) {
                Users u = new Users();
                u.setEmail(resultSet.getString("email"));
                u.setPassword(resultSet.getString("password"));
                u.setName(resultSet.getString("name"));
                u.setBranch(resultSet.getString("branch"));
                admins.add(u);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return admins;
    }
    
    public boolean addCustomer(Users u) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("INSERT INTO `customers` VALUES ('" + u.getEmail() + "', '" + u.getPassword() + "', '" + u.getName() + "', '" + u.getBranch() + "', '" + u.getTelephone() + "', " + u.getNoOfTrips() + ", '" + u.getStatus() + "')");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean addDriver(Users u) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("INSERT INTO `drivers` VALUES ('" + u.getEmail() + "', '" + u.getPassword() + "', '" + u.getName() + "', '" + u.getBranch() + "', '" + u.getTelephone() + "', '" + u.getStatus() + "', " + u.getNoOfVehicles() + ", " + u.getNoOfTrips() + ")");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean addAdmin(Users u) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("INSERT INTO `admins` VALUES ('" + u.getEmail() + "', '" + u.getPassword() + "', '" + u.getName() + "', '" + u.getBranch() + "')");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateCustomer(Users u) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("UPDATE `customers` SET `Password` = '" + u.getPassword()+ "', `Name` = '" +u.getName()+ "', `Branch` = '" +u.getBranch()+ "', `Telephone` = '" +u.getTelephone()+ "', `NoOfTrips` = " +u.getNoOfTrips()+ ", `Status` = '" +u.getStatus()+ "' WHERE `Email` = '" + u.getEmail()+ "';");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateDriver(Users u) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("UPDATE `drivers` SET `Password` = '" + u.getPassword()+ "', `Name` = '" +u.getName()+ "', `Branch` = '" +u.getBranch()+ "', `Telephone` = '" +u.getTelephone()+ "', `Status` = '" +u.getStatus()+ "', `NoOfTrips` = " +u.getNoOfTrips()+ ", `NoOfVehicles` = " +u.getNoOfVehicles()+ " WHERE `Email` = '" + u.getEmail()+ "';");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean updateAdmin(Users u) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("UPDATE `admins` SET `Password` = '" + u.getPassword()+ "', `Name` = '" +u.getName()+ "', `Branch` = '" +u.getBranch()+ "' WHERE `Email` = '" + u.getEmail()+ "';");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteCustomer(String email) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("DELETE FROM `customers` WHERE (`Email` = '" + email + "')");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteDriver(String email) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("DELETE FROM `drivers` WHERE (`Email` = '" + email + "')");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
    
    public boolean deleteAdmin(String email) {
        int rowsAffected = 0;
        try {
            rowsAffected = statement.executeUpdate("DELETE FROM `admins` WHERE (`Email` = '" + email + "')");
        } catch(SQLException e) {
            System.out.println(e);
        }
        return rowsAffected > 0;
    }
}
