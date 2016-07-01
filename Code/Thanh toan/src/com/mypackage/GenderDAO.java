package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class GenderDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public GenderDAO() {}

    public static List<Gender> getAll() throws SQLException {
        List<Gender> list = new ArrayList<Gender>();
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM gender");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                Gender gender = new Gender();
                gender.setM_ID(rs.getInt("ID"));
                gender.setM_Name(rs.getString("Name"));
                list.add(gender);
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

    public static boolean updateName (int ID, String Name){
        boolean check = true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);

            stmt = conn.prepareStatement("UPDATE gender set Name=? where ID=?");
            stmt.setString(1, Name);
            stmt.setInt(2, ID);
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

    public static boolean Insert (Gender gender){
        boolean check=true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("INSERT INTO gender(Name) VALUES(?)");
            stmt.setString(1, gender.getM_Name());
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
            stmt = connection.prepareStatement("delete from gender where ID=?");
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
