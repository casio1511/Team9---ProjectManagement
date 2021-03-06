package com.mypackage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by DELL 3421 on 6/25/2016.
 */
public class Search_Servlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "shoe_database";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";

        Statement st;


        String category = request.getParameter("category");
        String sport = request.getParameter("sport");
        String gender = request.getParameter("gender");
        String fprice = request.getParameter("fromprice");
        String tprice = request.getParameter("toprice");

        try{
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected!");
            String query = null;

            ArrayList al;
            ArrayList productList = new ArrayList();

            //blank
            if(category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(gender.equals("0"))&&(sport.equals("0"))  )
            {
                RequestDispatcher view = request.getRequestDispatcher("/advanced_search_view.jsp");
                view.forward(request, response);
            }


            //Category, From, To, Gender, Sport
            if (!category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(!gender.equals("0"))&&(!sport.equals("0")) )
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);

                query = "select DISTINCT * from product  where Category ="+category+"  AND Sport="+sport+" AND Gender="+gender+" AND Price BETWEEN '"+fromprice+"' AND '"+toprice+"' GROUP BY Name";
            }
            // from and to
            if (category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(gender.equals("0"))&&(sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);

                query = "select * from product where Price BETWEEN '"+fromprice+"' AND '"+toprice+"'  GROUP BY Name";
            }

            //category
            if (!category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(gender.equals("0"))&&(sport.equals("0")))
            {
                query = "select * from product where Category="+category+" GROUP BY Name";
            }

            //gender
            if (category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(!gender.equals("0"))&&(sport.equals("0")))
            {
                query = "select * from product where Gender="+gender+"  GROUP BY Name";
            }

            //sport
            if (category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(gender.equals("0"))&&(!sport.equals("0")))
            {
                query = "select * from product where Sport="+sport+"  GROUP BY Name";
            }

            //category and gender
            if (!category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(!gender.equals("0"))&&(sport.equals("0")))
            {
                query = "select * from product where Category="+category+" AND Gender ="+gender+"  GROUP BY Name";
            }

            //category and sport
            if (!category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(gender.equals("0"))&&(!sport.equals("0")))
            {
                query = "select * from product where Category="+category+" AND Sport ="+sport+"  GROUP BY Name";
            }

            //Gender and Sport
            if (category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(!gender.equals("0"))&&(!sport.equals("0")))
            {
                query = "select * from product where Gender="+gender+" AND Sport ="+sport+"  GROUP BY Name";
            }

            //Category, Gender and Sport
            if (!category.equals("0")&& (fprice.equals("")) && (tprice.equals(""))&&(!gender.equals("0"))&&(!sport.equals("0")))
            {
                query = "select * from product where Category="+category+" AND Gender="+gender+" AND Sport ="+sport+"  GROUP BY Name";
            }

            //Category , from , to
            if (!category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(gender.equals("0"))&&(sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product where Category ="+category+" AND Price BETWEEN '"+fromprice+"' AND '"+toprice+"'  GROUP BY Name";
            }

            //Category, from, to, gender
            if (!category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(!gender.equals("0"))&&(sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product where Gender="+gender+" AND Category ="+category+" AND Price BETWEEN '"+fromprice+"' AND "+toprice+" GROUP BY Name";
            }

            //Category, from, to, sport
            if (!category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(gender.equals("0"))&&(!sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product where Sport="+sport+" AND Category ="+category+" AND Price BETWEEN '"+fromprice+"' AND "+toprice+" GROUP BY Name";
            }

            //Gender, from, to
            if (category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(!gender.equals("0"))&&(sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product where Gender="+gender+"  AND Price BETWEEN '"+fromprice+"' AND "+toprice+" GROUP BY Name";
            }

            //Sport, from, to
            if (category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(gender.equals("0"))&&(!sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product where Sport="+sport+"  AND Price BETWEEN '"+fromprice+"' AND "+toprice+" GROUP BY Name";
            }

            //Sport,Gender, from, to
            if (category.equals("0")&& (!fprice.equals("")) && (!tprice.equals(""))&&(!gender.equals("0"))&&(!sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product where Sport="+sport+" AND Gender="+gender+"  AND Price BETWEEN '"+fromprice+"' AND "+toprice+" GROUP BY Name";
            }

            //Sport,Gender, from, to
            if (category.equals("0")&& (!fprice.equals("")) && (tprice.equals("0"))&&(gender.equals("0"))&&(sport.equals("0")))
            {
                double fromprice = Double.parseDouble(fprice);
                double toprice = Double.parseDouble(tprice);
                query = "select * from product Price > '"+fromprice+"'";
            }








            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()){
                al = new ArrayList();

                al.add(rs.getInt(1));
                al.add(rs.getString(2));
                al.add(rs.getString(4));
                al.add(rs.getString(7));
                al.add(rs.getDouble(8));
                al.add(rs.getDouble(9));
                al.add(rs.getInt(10));
                al.add(rs.getInt(11));
                al.add(rs.getString(13));

                System.out.println("al :: "+ al);
                productList.add(al);
            }

            request.setAttribute("piList", productList);
            RequestDispatcher view = request.getRequestDispatcher("/advanced_search_view.jsp");
            view.forward(request, response);

            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
