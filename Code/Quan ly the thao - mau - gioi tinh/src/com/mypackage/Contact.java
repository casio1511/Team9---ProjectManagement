package com.mypackage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Phuong Tran on 27/06/2016.
 */
public class Contact extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        respone.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = respone.getWriter();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String title = request.getParameter("title");
        String message = request.getParameter("message");
        SendEmail.main(message,email,title);
        respone.sendRedirect("contact.jsp");
    }
}
