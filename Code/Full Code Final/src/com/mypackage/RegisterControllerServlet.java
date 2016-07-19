package com.mypackage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * Created by Phuong Tran on 09/06/2016.
 */
public class RegisterControllerServlet extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        respone.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = respone.getWriter();
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        String password = MD5.getMD5(pass);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        Account account = new Account(username, name, password, email, address, phone, 0);
        boolean check = AccountDAO.Insert(account);
        if(check == true){
            HttpSession session = request.getSession();
            session.setAttribute("mess", "Your account is not active, please wait for administrator");
            SendEmail.main(SendMailJSPGUI.confirm(name, email) ,email, "Confirm email");
            respone.sendRedirect("active_email.jsp");
        }
        else{
            respone.sendRedirect("register.jsp?error=1");
        }
    }
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        doPost(request, respone);
    }
}
