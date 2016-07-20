package com.mypackage;

import javax.management.relation.*;
import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 29/06/2016.
 */
public class AccountJSPGUI {

    public static String ShowUserAdmin (int page_number, int total, int page_total){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='work-progres'>" +
                " <div class='chit-chat-heading'>All Users</div>" +
                " <div class='table-responsive'>" +
                " <form method='post' action='AddSize.jsp'>" +
                " <table width='89%' class='table table-hover'>" +
                "  <tr><td><b>ID</b></td><td><b>Name</b></td><td><b>Registed Date</b></td><td><b>Status</b></td>" +
                "  <td></td><td></td><td><b>Roles</b></td></tr>");
                List<Account> list_account = AccountDAO.getAllPagingLatest(page_number, 6);
                for(Account account : list_account) {
                    if (account.getM_Role() != 1) {
                        sb.append("<tr><td>" + account.getM_ID() + "</td>" +
                                "<td>" + account.getM_Name() + "</td>" +
                                "<td>" + account.getM_Date() + "</td>" +
                                "<td>");
                        if (account.getM_Status() == 0)
                            sb.append("<a href='EditUser.jsp?action=active&&id=" + account.getM_ID() + "' style='text-decoration: none'><span class='label label-warning'>Inactive</span></a>");
                        else
                            sb.append("<a href='EditUser.jsp?action=inactive&&id=" + account.getM_ID() + "' style='text-decoration: none'><span class='label label-success'>Actived</span></a>");
                        sb.append("</td>" +
                                "<td><a href='user_detail.jsp?id=" + account.getM_ID() + "'><span class='label label-info'>Edit</span></a></td>" +
                                "<td><a href='EditUser.jsp?action=delete&&id=" + account.getM_ID() + "'><span class='label label-danger'>Delete</span></a></td>" +
                                "<td>" + RoleDAO.getByID(account.getM_Role()).getM_Name() + "</td></tr>");
                    }
                }
                sb.append("<tr>");
                if(page_number == 1 && total > 6)
                    sb.append("<td><a href='user.jsp?page=2'>Next</a></td>");
                else if(page_number == page_total && total > 6)
                    sb.append("<td><a href='user.jsp?page=" + (page_number-1) + "'>Prev</a></td>");
                else if(total <= 6)
                    sb.append("<td></td>");
                else
                    sb.append("<td><a href='user.jsp?page=" + (page_number - 1) + "'>Prev</a>&nbsp;&nbsp;&nbsp;<a href='user.jsp?page=" + (page_number + 1) + "'>Next</a></td>");
                sb.append("</tr></table></form></div></div>");
        return sb.toString();
    }

    public static String EditRoleUser (Account account){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='appearance'><div class='col-md-6'>" +
                "<p><h3>Information</h3></p>" +
                "<form method='post' action='EditUser.jsp'>" +
                "<table class='table table-bordered'>" +
                "<tr><td width='28%'>Username</td><td width='72%'>"+account.getM_Username()+"</td></tr>" +
                "<tr><td>Name</td><td>"+account.getM_Name()+"</td></tr>" +
                "<tr><td>Email</td><td>"+account.getM_Email()+"</td></tr>" +
                "<tr><td>Address</td><td>"+account.getM_Address()+"</td></tr>" +
                "</table></div>" +
                "<div class='col-md-6'><div class='col-md-6 col-lg-9'><br><br><br>" +
                "<table class='table table-bordered'>" +
                "<tr><td>Phone</td><td>"+account.getM_Phone()+"</td></tr>" +
                "<tr><td>Registed Date</td><td>"+account.getM_Date()+"</td></tr>" +
                "<tr><td>Status</td>");
                if(account.getM_Status() == 1){
                    sb.append("<td>Active</td>");
                }else{
                    sb.append("<td>Inactive</td>");
                }
                sb.append("</tr>" +
                "<tr><td>Role</td> <td><select name='role'>");
                List<Role> list = RoleDAO.getAll();
                Role role_name = RoleDAO.getByID(account.getM_Role());
                sb.append("<option value='"+role_name.getM_ID()+"'>"+role_name.getM_Name()+"</option>");
                for(Role role : list){
                    if(role.getM_ID() != account.getM_Role() && role.getM_ID()!=1){
                        sb.append("<option value='"+role.getM_ID()+"'>"+role.getM_Name()+"</option>");
                  }
                }
                sb.append("</select><input type='hidden' name='id' value='"+account.getM_ID()+"'></td></tr></table>" +
                "<input type='submit' name='edit' value='Edit'></div></form>");
        return sb.toString();
    }
    
    public static String ShowPersonalInfo (Account account){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='col-md-9 cart-items col-lg-offset-2 col-lg-8'>" +
                "<div class='cart-header'><div class='close1'></div><div class='cart-sec simpleCart_shelfItem'>" +
                "<div class='cart-item cyc'> </div><a class='continue'>User Information</a>" +
                "</div></div><div class='cart-header2'><div class='close2'></div>" +
                "<div class='cart-sec simpleCart_shelfItem'>" +
                "<form method='post' action='EditInformation' onsubmit='return CheckInput()'>" +
                "<div class='col-md-3 cart-total col-lg-6'>" +
                "<table class='table table-bordered'>" +
                "<tr><td width='37%'>Username</td><td width='63%'>"+account.getM_Username()+"</td></tr>" +
                "<tr><td>Name</td><td>" +
                "<input type='text' value='"+account.getM_Name()+"' name='name'  style='border: none'>" +
                "<div id='checkname' style='color: red'></div></td></tr></table>" +
                "<table class='table table-bordered'>" +
                "<tr><td width='37%'>Password</td><td width='63%'>" +
                "<input type='password' class='password' name='password' style='border: none'>" +
                "<div class='checkpass'></div><input type='hidden' class='hiddenid' name='hiddenid' value='"+account.getM_ID()+"'>" +
                "<input type='hidden' name='result' class='result' id='result' value='false'>" +
                "</td></tr></table>" +
                "<table class='table table-bordered'>" +
                "<tr><td  width='37%'>New Password</td>" +
                "<td><input type='password' onchange='CheckPass()' name='newpassword' id='newpassword' style='border: none'>" +
                "<div id='checknewpassword' style='color: red'></div></td></tr><tr>" +
                "<td  width='37%'>Re-new Password</td><td>" +
                "<input type='password' name='repassword' class='repassword' id='repassword' onchange='CheckPass()' style='border: none'>" +
                "<div id='checkrepassword' style='color: red'></div></td></tr></table></div>" +
                "<div class='col-md-3 cart-total col-lg-6'><table class='table table-bordered'><tr>" +
                "<td width='37%'>Phone</td><td width='63%'>" +
                "<input  style='border: none' type='text' name='phone' id='phone' value='"+account.getM_Phone()+"'>" +
                "<div id='checkphone'></div></td></tr>" +
                "<tr><td>Email</td><td>"+account.getM_Email()+"</td></tr></table>" +
                "<table class='table table-bordered'><tr>" +
                "<td width='37%'>Registed Date</td><td width='63%'>"+account.getM_Date()+"</td></tr></table>" +
                "<input type='submit' value='Update' class='button_submit'></div></div>" +
                "</form></div><div class='clearfix'> </div></div>");
        return sb.toString();
    }
}
