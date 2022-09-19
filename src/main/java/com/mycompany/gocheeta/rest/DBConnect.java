package com.mycompany.gocheeta.rest;

import static com.mycompany.gocheeta.rest.DBUtil_Booking.DB_URL;
import static com.mycompany.gocheeta.rest.DBUtil_Booking.PASS;
import static com.mycompany.gocheeta.rest.DBUtil_Booking.USER;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import sun.jvm.hotspot.utilities.soql.SOQLException;

public class DBConnect {
    private static final DBConnect instance = new DBConnect(); 
    static final String DB_URL = "jdbc:mysql://localhost:3306/gocheeta?autoReconnect=true&useSSL=false";
     
    static final String USER = "icbt";
    static final String PASS = "icbt";
    public Connection connection;
    public Statement statement;
        
    private DBConnect(){
        try{
            this.connection = DriverManager.getConnection(DB_URL, USER, PASS);
            this.statement = this.connection.createStatement();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
    }  

    public static DBConnect getInstance(){
        return instance;
    }

    public void openConnection(){
        try{
          Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
          Statement statement = conn.createStatement();
        }catch(Exception e) {
            System.out.println(e);
        }
    }
}
