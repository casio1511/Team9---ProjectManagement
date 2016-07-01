package com.mypackage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Phuong Tran on 01/07/2016.
 */
public class RoleController extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        respone.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = respone.getWriter();
        //add
        /*if(request.getParameter("name")!=null ) {
            Role role = new Role();
            role.setM_Name(request.getParameter("name"));
            role.setM_Product(0);
            if(request.getParameter("product")!=null && request.getParameter("product").equals("on"))
                role.setM_Product(1);
            role.setM_Bill(0);
            if(request.getParameter("bill")!=null && request.getParameter("bill").equals("on"))
                role.setM_Bill(1);
            role.setM_Account(0);
            if(request.getParameter("account")!=null && request.getParameter("account").equals("on"))
                role.setM_Account(1);
            RoleDAO.Insert(role);
        }
        //fix
        else{

        }*/
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        doPost(request, respone);
    }
}
