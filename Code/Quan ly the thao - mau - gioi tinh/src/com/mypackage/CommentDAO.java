package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phuong Tran on 10/06/2016.
 */
public class CommentDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public CommentDAO() {}

    public static List<Comment> getByID(int id) {
        List<Comment> list = new ArrayList<Comment>();
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM comment where IDProduct=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                Comment comment = new Comment();
                comment.setM_ID(rs.getInt("ID"));
                comment.setM_Username(rs.getString("Username"));
                comment.setM_Email(rs.getString("Email"));
                comment.setM_Content(rs.getString("Content"));
                comment.setM_Date(rs.getDate("Date"));
                comment.setM_IDProduct(rs.getInt("IDProduct"));
                list.add(comment);
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

    public static boolean Insert (Comment comment){
        boolean check=true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("INSERT INTO comment(Username, Email, Content, IDProduct) VALUES (?,?,?,?)");
            stmt.setString(1, comment.getM_Username());
            stmt.setString(2, comment.getM_Email());
            stmt.setString(3, comment.getM_Content());
            stmt.setInt(4, comment.getM_IDProduct());
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

    public static int countCommentByID (int id){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select * from comment where IDProduct=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }
}
