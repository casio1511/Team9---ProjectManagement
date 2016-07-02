package com.mypackage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Phuong Tran on 13/06/2016.
 */
public class CommentController extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        respone.setContentType("text/html");
        PrintWriter out = respone.getWriter();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        int idproduct = Integer.parseInt(request.getParameter("id"));
        if(name == null || email == null || message == null)
            respone.sendRedirect("single.jsp?id="+idproduct);
        else{
            Comment comment = new Comment(name, email, message, idproduct);
            CommentDAO.Insert(comment);
            respone.sendRedirect("single.jsp?id="+idproduct);
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        doPost(request, respone);
    }
}

