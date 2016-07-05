package com.mypackage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class LogoutController extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        respone.setContentType("text/html");
        PrintWriter out = respone.getWriter();
        HttpSession session = request.getSession();
        session.invalidate();
        respone.sendRedirect("index.jsp");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        doPost(request, respone);
    }
}

