package com.mypackage;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.midi.SysexMessage;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.AccessibleObject;

/**
 * Created by Phuong Tran on 18/11/2015.
 */
public class LoginControllerServlet extends HttpServlet {
    private Object CustomerDao;
    //private HttpServletResponse response;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(session.getAttribute("count")!=null)
            if((int)session.getAttribute("count") == 3)
                response.sendRedirect("signup.jsp");
        Account account = new Account();
        if(username.equals("admin") && password.equals("admin")) {
            account.setM_Username(username);
            account.setM_Password(password);
            account.setM_Status(1);
        }
        else
            account = AccountDAO.getUser(username, password);
        //Neu co ton tai username nay
        if ((username != null)&&(password!=null)) {
            //neu dung password
            if ((password.equals(account.getM_Password()) && account.getM_Status() == 1)) {
                session.setAttribute("username", account.getM_Username());
                session.setAttribute("password", account.getM_Password());
                session.setAttribute("count", 0);
                response.sendRedirect("information.jsp");
            }
            else if (password.equals(account.getM_Password()) && account.getM_Status() == 0) {
                session.setAttribute("mess", "Your account is not active");
                response.sendRedirect("signup.jsp");
            }
            //neu sai password
            else{
                //chua tung dang nhap sai
                if(session.getAttribute("count") == null) {
                    session.setAttribute("count", 0);
                }
                //da tung dang nhap sai
                else {
                    int count = (int)session.getAttribute("count");
                    if (count < 3)
                        count++;
                    session.setAttribute("count", count);
                }
                if(session.getAttribute("count") == null || (int)session.getAttribute("count") < 3)
                    session.setAttribute("mess", "Your account is not correct");
                else
                    session.setAttribute("mess", "Your account will be blocked in 30 minutes");
                response.sendRedirect("signup.jsp");
            }
        }
        //khong nhap gi het
        else{
            session.setAttribute("mess", "Your account is not correct");
            response.sendRedirect("signup.jsp");
        }
    }
}
