package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phuong Tran on 17/06/2016.
 */
public class BillDetailDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public BillDetailDAO() {}

    public static void InsertDetail(BillDetail detail){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("INSERT INTO detailbill (IDBill, Product, Quantity, Price, Total) VALUES (?,?,?,?,?)");
            stmt.setInt(1, detail.getM_IDBill());
            stmt.setInt(2, detail.getM_Product());
            stmt.setInt(3, detail.getM_Quantity());
            stmt.setDouble(4, detail.getM_Price());
            stmt.setDouble(5, detail.getM_Total());
            stmt.executeUpdate();
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
    }

    public static List<BillDetail> getDetailByID (int id){
        List<BillDetail> list = new ArrayList<BillDetail>();
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM detailbill where idbill=?");
            stmt.setInt(1, id);
            System.out.print(stmt);
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
            {
                BillDetail detail = new BillDetail();
                detail.setM_ID(rs.getInt("id"));
                detail.setM_IDBill(rs.getInt("idbill"));
                detail.setM_Product(rs.getInt("product"));
                detail.setM_Quantity(rs.getInt("quantity"));
                detail.setM_Price(rs.getDouble("price"));
                detail.setM_Total(rs.getDouble("total"));
                list.add(detail);
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
}
