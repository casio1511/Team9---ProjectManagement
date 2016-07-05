package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;


/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class BillDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public BillDAO() {}

    public static void Insert (Bill bill){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("INSERT INTO bill (Name, Address, Phone, Quantity, Total,Email) VALUES (?,?,?,?,?,?)");
            stmt.setString(1, bill.getM_Name());
            stmt.setString(2, bill.getM_Address());
            stmt.setString(3, bill.getM_Phone());
            stmt.setInt(4, bill.getM_Quantity());
            stmt.setDouble(5, bill.getM_Total());
            stmt.setString(6, bill.getM_Email());
            stmt.executeUpdate();
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
    }

    public static Bill getLastBill(){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        Bill bill = new Bill();
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM bill ORDER BY ID Desc limit 0,1");
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                bill.setM_ID(rs.getInt("ID"));
                bill.setM_Address(rs.getString("Address"));
                bill.setM_Email(rs.getString("Email"));
                bill.setM_Date(rs.getDate("Date"));
                bill.setM_Name(rs.getString("Name"));
                bill.setM_Phone(rs.getString("Phone"));
                bill.setM_Quantity(rs.getInt("Quantity"));
                bill.setM_Status(rs.getInt("Status"));
                bill.setM_Total(rs.getDouble("Total"));
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return bill;
    }

    public static List<Bill> getAll(){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        List<Bill> list = new ArrayList<Bill>();
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM bill ");
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
            {
                Bill bill = new Bill();
                bill.setM_ID(rs.getInt("ID"));
                bill.setM_Address(rs.getString("Address"));
                bill.setM_Email(rs.getString("Email"));
                bill.setM_Date(rs.getDate("Date"));
                bill.setM_Name(rs.getString("Name"));
                bill.setM_Phone(rs.getString("Phone"));
                bill.setM_Quantity(rs.getInt("Quantity"));
                bill.setM_Status(rs.getInt("Status"));
                bill.setM_Total(rs.getDouble("Total"));
                list.add(bill);
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return list;
    }

    public static int countGetAll(){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        int count = 0;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM bill");
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
                count++;
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static int countDelivered(){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        int count = 0;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM bill where status=1");
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
                count++;
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static double getSaleOfMonth (int month){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        double total = 0;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT sum(total) as total FROM bill where month(DATE)=?");
            stmt.setInt(1, month);
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
               total = rs.getDouble("total");
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return total;
    }

    public static List<Bill> getAllPaging(int page, int row){
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        List<Bill> list = new ArrayList<Bill>();
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select * from bill LIMIT ?, ?");
            stmt.setInt(1, (page - 1) * row);
            stmt.setInt(2, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Bill bill = new Bill();
                bill.setM_ID(rs.getInt("ID"));
                bill.setM_Address(rs.getString("Address"));
                bill.setM_Email(rs.getString("Email"));
                bill.setM_Date(rs.getDate("Date"));
                bill.setM_Name(rs.getString("Name"));
                bill.setM_Phone(rs.getString("Phone"));
                bill.setM_Quantity(rs.getInt("Quantity"));
                bill.setM_Status(rs.getInt("Status"));
                bill.setM_Total(rs.getDouble("Total"));
                list.add(bill);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static List<Bill> getByMail(String email){
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        List<Bill> list = new ArrayList<Bill>();
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select * from bill where email=?");
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Bill bill = new Bill();
                bill.setM_ID(rs.getInt("ID"));
                bill.setM_Address(rs.getString("Address"));
                bill.setM_Email(rs.getString("Email"));
                bill.setM_Date(rs.getDate("Date"));
                bill.setM_Name(rs.getString("Name"));
                bill.setM_Phone(rs.getString("Phone"));
                bill.setM_Quantity(rs.getInt("Quantity"));
                bill.setM_Status(rs.getInt("Status"));
                bill.setM_Total(rs.getDouble("Total"));
                list.add(bill);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static Bill getByID(int id){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        Bill bill = new Bill();
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM bill where id=?");
            stmt.setInt(1, id);
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
                bill.setM_ID(rs.getInt("ID"));
                bill.setM_Address(rs.getString("Address"));
                bill.setM_Email(rs.getString("Email"));
                bill.setM_Date(rs.getDate("Date"));
                bill.setM_Name(rs.getString("Name"));
                bill.setM_Phone(rs.getString("Phone"));
                bill.setM_Quantity(rs.getInt("Quantity"));
                bill.setM_Status(rs.getInt("Status"));
                bill.setM_Total(rs.getDouble("Total"));
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return bill;
    }

    public static boolean activeBill(int id){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        Boolean check = true;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("UPDATE bill set status=1 where id=?");
            stmt.setInt(1, id);
            stmt.executeUpdate();
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
            check = false;
        }
        return check;
    }
}
