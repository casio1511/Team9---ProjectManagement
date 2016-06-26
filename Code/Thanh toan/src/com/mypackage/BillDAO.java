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

}
