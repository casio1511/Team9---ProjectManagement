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
 * Created by Phuong Tran on 09/06/2016.
 */
public class CheckAvailability extends HttpServlet {

    // private static final long serialVersionUID = -734503860925086969L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
            Connection connection = null;
            connection = DriverManager.getConnection(connectionURL, "root", "");
            if(request.getParameter("username") != null) {
                String username = request.getParameter("username");
                PreparedStatement ps = connection.prepareStatement("select * from account where Username=?");
                ps.setString(1, username);
                ResultSet rs = ps.executeQuery();
                if (!rs.next()) {
                    out.println("true");
                } else {
                    out.println("false");
                }
                out.println();
            }
            else if(request.getParameter("email") != null){
                String email = request.getParameter("email");
                PreparedStatement ps = connection.prepareStatement("select * from account where Email=?");
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();

                if (!rs.next()) {
                    out.println("true");
                } else {
                    out.println("false");
                }
                out.println();
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
