package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phuong Tran on 28/06/2016.
 */
public class RoleDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public RoleDAO() {}

    public static List<Role> getAll() throws SQLException {
        List<Role> list = new ArrayList<Role>();
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM role");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                Role role = new Role();
                role.setM_ID(rs.getInt("id"));
                role.setM_Name(rs.getString("name"));
                role.setM_Product(rs.getInt("product"));
                role.setM_Account(rs.getInt("account"));
                role.setM_Bill(rs.getInt("bill"));
                list.add(role);
            }
            rs.close();
            stmt.close();
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return list;
    }

    public static Role getByID (int id) {
        Role role = new Role();
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM role where id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                role.setM_ID(rs.getInt("id"));
                role.setM_Name(rs.getString("name"));
                role.setM_Product(rs.getInt("product"));
                role.setM_Account(rs.getInt("account"));
                role.setM_Bill(rs.getInt("bill"));
            }
            rs.close();
            stmt.close();
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return role;
    }

    public static boolean update (Role role ){
        boolean check = true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            stmt = conn.prepareStatement("UPDATE role set Name=?, product=?, bill=?, account=? where ID=?");
            stmt.setString(1, role.getM_Name());
            stmt.setInt(2, role.getM_Product());
            stmt.setInt(3, role.getM_Bill());
            stmt.setInt(4, role.getM_Account());
            stmt.executeUpdate();
            stmt.close();
            if (conn != null) {
                conn.close();
                conn = null;
                check=false;
            }
            stmt.close();
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return check;
    }

    public static boolean Insert (Role role){
        boolean check=true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("INSERT INTO role(Name, product, bill, account) VALUES(?,?,?,?)");
            stmt.setString(1, role.getM_Name());
            stmt.setInt(2, role.getM_Product());
            stmt.setInt(3, role.getM_Bill());
            stmt.setInt(4, role.getM_Account());
            stmt.executeUpdate();
            stmt.close();
            if (conn != null) {
                conn.close();
                conn = null;
                check=false;
            }
            stmt.close();
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return check;
    }

    public static boolean Delete (int id){
        boolean check = true;
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        Connection connection;
        PreparedStatement stmt = null;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("delete from role where ID=?");
            stmt.setInt(1, id);
            stmt.executeUpdate();
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
            check = false;
        }
        return check;
    }


}
