package com.mypackage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Phuong Tran on 29/06/2016.
 */
public class CheckPassword extends HttpServlet {

    // private static final long serialVersionUID = -734503860925086969L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
            Connection connection = null;
            connection = DriverManager.getConnection(connectionURL, "root", "");
            if((request.getParameter("password") != null)&&request.getParameter("id")!=null) {
                String password = request.getParameter("password");
                int id = Integer.parseInt(request.getParameter("id"));
                System.out.print(password);
                String pass = MD5.getMD5(password);
                PreparedStatement ps = connection.prepareStatement("select * from account where id=? and password=?");
                ps.setInt(1, id);
                ps.setString(2, pass);
                System.out.print(ps);
                ResultSet rs = ps.executeQuery();
                if (!rs.next()) {
                    out.print("false");
                } else {
                    out.print("true");
                }
                out.println();
            }
            else{
                out.print("false");
            }
        } catch (Exception ex) {
            out.println("Error ->" + ex.getMessage());

        } finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}