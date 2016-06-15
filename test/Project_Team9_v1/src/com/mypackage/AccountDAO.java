package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class AccountDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public AccountDAO() {}

    public static List<Account> getAll() throws SQLException {
        List<Account> list = new ArrayList<Account>();
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM account");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                Account account = new Account();
                account.setM_ID(rs.getInt("ID"));
                account.setM_Username(rs.getString("Username"));
                account.setM_Name(rs.getString("Name"));
                account.setM_Password(rs.getString("Password"));
                account.setM_Email(rs.getString("Email"));
                account.setM_Address(rs.getString("Address"));
                account.setM_Phone(rs.getString("Phone"));
                account.setM_Date(rs.getDate("Date"));
                account.setM_Status(rs.getInt("Status"));
                list.add(account);
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

    public static Account getUser(String username, String password){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        Account new_account = new Account();
        try{
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("SELECT * FROM account WHERE Username=? AND Password=?");
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            new_account.setM_Username(rs.getString("Username"));
            new_account.setM_Password(rs.getString("Password"));
            new_account.setM_Status(rs.getInt("Status"));
            rs.close();
            stmt.close();
            if(conn != null){
                conn.close();
                conn = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("Can't connect to database");
        }
        return new_account;
    }

    public static boolean Insert (Account account){
        boolean check = false;
        PreparedStatement sql = null;
        Connection connection = null;
        try{
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_database", "root", "");
            sql = connection.prepareStatement("INSERT INTO account(name, username, password, email, phone, address, status) VALUES (?,?,?,?,?,?,?)");
            sql.setString(1, account.getM_Name());
            sql.setString(2, account.getM_Username());
            sql.setString(3, account.getM_Password());
            sql.setString(4, account.getM_Email());
            sql.setString(5, account.getM_Phone());
            sql.setString(6, account.getM_Address());
            sql.setInt(7, account.getM_Status());
            int kq = sql.executeUpdate();
            if(kq == 1)
                check = true;
            sql.close();
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("Can't connect to database");
        }
        return check;
    }

}

