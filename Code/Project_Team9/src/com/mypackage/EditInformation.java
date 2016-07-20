package com.mypackage;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Phuong Tran on 29/06/2016.
 */
public class EditInformation extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        respone.setContentType("text/html");
        PrintWriter out = respone.getWriter();
        request.setCharacterEncoding("UTF-8");
        String result = request.getParameter("result");
        System.out.print(result);
        String name = request.getParameter("name");
        int id = Integer.parseInt(request.getParameter("hiddenid"));
        String password = "";
        if(result.equals("false")){
            Account account = AccountDAO.getUserByID(id);
            password = account.getM_Password();
        } else if(result.equals("pass")){
            password = MD5.getMD5(request.getParameter("newpassword"));
        }
        String phone = request.getParameter("phone");
        Account account = new Account();
        account.setM_Name(name);
        account.setM_Password(password);
        account.setM_Phone(phone);
        account.setM_ID(id);
        AccountDAO.edit(account);
        respone.sendRedirect("information.jsp");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respone)
            throws javax.servlet.ServletException, IOException {
        doPost(request, respone);
    }
}
