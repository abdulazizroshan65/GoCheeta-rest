/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package com.mycompany.gocheeta.rest;

import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author thilanmaduranga
 */
public class DBUtil_UsersTest {
    
    public DBUtil_UsersTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }
    
//    @Test
    public void testCRUDCustomer() {
        System.out.println("Customer");
        Users user = new Users("customer1", "password", "name", "branch", "123", 10, "status", 10);
        DBUtil_Users db = new DBUtil_Users();
        boolean expectedRes = true;
        boolean addUser = db.addCustomer(user);
        assertEquals(expectedRes, addUser);
        
        user.setPassword("password updated");
        user.setName("name updated");
        user.setBranch("branch name");
        user.setTelephone("123");
        user.setNoOfTrips(15);
        user.setStatus("status upadted");
        user.setNoOfVehicles(20);
        boolean updateUser = db.updateCustomer(user);
        assertEquals(expectedRes, updateUser);
        
        boolean deleteUser = db.deleteCustomer(user.getEmail());
        assertEquals(expectedRes, deleteUser);
    }
    
//    @Test
    public void testCRUDAdmin() {
        System.out.println("Admin");
        Users user = new Users("admin1", "password", "name", "branch", "123", 10, "status", 10);
        DBUtil_Users db = new DBUtil_Users();
        boolean expectedRes = true;
        boolean addUser = db.addCustomer(user);
        assertEquals(expectedRes, addUser);
        
        user.setPassword("password updated");
        user.setName("name updated");
        user.setBranch("branch name");
        user.setTelephone("123");
        user.setNoOfTrips(15);
        user.setStatus("status upadted");
        user.setNoOfVehicles(20);
        boolean updateUser = db.updateCustomer(user);
        assertEquals(expectedRes, updateUser);
        
        boolean deleteUser = db.deleteCustomer(user.getEmail());
        assertEquals(expectedRes, deleteUser);
    }
    
//    @Test
    public void testCRUDDriver() {
        System.out.println("Driver");
        Users user = new Users("driver1", "password", "name", "branch", "123", 10, "status", 10);
        DBUtil_Users db = new DBUtil_Users();
        boolean expectedRes = true;
        boolean addUser = db.addCustomer(user);
        assertEquals(expectedRes, addUser);
        
        user.setPassword("password updated");
        user.setName("name updated");
        user.setBranch("branch name");
        user.setTelephone("123");
        user.setNoOfTrips(15);
        user.setStatus("status upadted");
        user.setNoOfVehicles(20);
        boolean updateUser = db.updateCustomer(user);
        assertEquals(expectedRes, updateUser);
        
        boolean deleteUser = db.deleteCustomer(user.getEmail());
        assertEquals(expectedRes, deleteUser);
    }
    
//    @Test
    public void testCRUDBooking() {
        System.out.println("Booking");
        Bookings booking = new Bookings(2, "datetime", "customerEmail", "driverEmail", "vehicleNo", "status", "pickup", "drop", 10, 10, "feedback");
        DBUtil_Booking db = new DBUtil_Booking();
        boolean expectedRes = true;
        boolean addBooking = db.newBooking(booking);
        assertEquals(expectedRes, addBooking);
    }

//    @Test
    public void testCRUDBranch() {
        System.out.println("Branch");
        BranchInfo branchInfo = new BranchInfo(1, "type", 10, 10, "plate no", 10, "driver name", 10, "name", 10, 10, 10, 10, "branch", "start", "stop", 10);
        DBUtil_Branch db = new DBUtil_Branch();
        boolean expectedRes = true;
//        boolean addBranch = db.addCategory(branchInfo)
    }

    /**
     * Test of getCustomer method, of class DBUtil_Users.
     */
//    @Test
//    public void testGetCustomer() {
//        System.out.println("getCustomer");
//        String email = "";
//        DBUtil_Users instance = new DBUtil_Users();
//        Users expResult = null;
//        Users result = instance.getCustomer(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getDriver method, of class DBUtil_Users.
//     */
//    @Test
//    public void testGetDriver() {
//        System.out.println("getDriver");
//        String email = "";
//        DBUtil_Users instance = new DBUtil_Users();
//        Users expResult = null;
//        Users result = instance.getDriver(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAdmin method, of class DBUtil_Users.
//     */
//    @Test
//    public void testGetAdmin() {
//        System.out.println("getAdmin");
//        String email = "";
//        DBUtil_Users instance = new DBUtil_Users();
//        Users expResult = null;
//        Users result = instance.getAdmin(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getCustomers method, of class DBUtil_Users.
//     */
//    @Test
//    public void testGetCustomers() {
//        System.out.println("getCustomers");
//        DBUtil_Users instance = new DBUtil_Users();
//        List<Users> expResult = null;
//        List<Users> result = instance.getCustomers();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getDrivers method, of class DBUtil_Users.
//     */
//    @Test
//    public void testGetDrivers() {
//        System.out.println("getDrivers");
//        DBUtil_Users instance = new DBUtil_Users();
//        List<Users> expResult = null;
//        List<Users> result = instance.getDrivers();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAdmins method, of class DBUtil_Users.
//     */
//    @Test
//    public void testGetAdmins() {
//        System.out.println("getAdmins");
//        DBUtil_Users instance = new DBUtil_Users();
//        List<Users> expResult = null;
//        List<Users> result = instance.getAdmins();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addCustomer method, of class DBUtil_Users.
//     */
//    @Test
//    public void testAddCustomer() {
//        System.out.println("addCustomer");
//        Users u = null;
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.addCustomer(u);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addDriver method, of class DBUtil_Users.
//     */
//    @Test
//    public void testAddDriver() {
//        System.out.println("addDriver");
//        Users u = null;
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.addDriver(u);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of addAdmin method, of class DBUtil_Users.
//     */
//    @Test
//    public void testAddAdmin() {
//        System.out.println("addAdmin");
//        Users u = null;
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.addAdmin(u);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateCustomer method, of class DBUtil_Users.
//     */
//    @Test
//    public void testUpdateCustomer() {
//        System.out.println("updateCustomer");
//        Users u = null;
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.updateCustomer(u);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateDriver method, of class DBUtil_Users.
//     */
//    @Test
//    public void testUpdateDriver() {
//        System.out.println("updateDriver");
//        Users u = null;
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.updateDriver(u);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updateAdmin method, of class DBUtil_Users.
//     */
//    @Test
//    public void testUpdateAdmin() {
//        System.out.println("updateAdmin");
//        Users u = null;
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.updateAdmin(u);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteCustomer method, of class DBUtil_Users.
//     */
//    @Test
//    public void testDeleteCustomer() {
//        System.out.println("deleteCustomer");
//        String email = "";
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.deleteCustomer(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteDriver method, of class DBUtil_Users.
//     */
//    @Test
//    public void testDeleteDriver() {
//        System.out.println("deleteDriver");
//        String email = "";
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.deleteDriver(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of deleteAdmin method, of class DBUtil_Users.
//     */
//    @Test
//    public void testDeleteAdmin() {
//        System.out.println("deleteAdmin");
//        String email = "";
//        DBUtil_Users instance = new DBUtil_Users();
//        boolean expResult = false;
//        boolean result = instance.deleteAdmin(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
}
