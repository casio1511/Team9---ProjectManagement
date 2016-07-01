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
                List<Account> list_account = AccountDAO.getAllPaging(page_number, 6);
                for(Account account : list_account){
                    sb.append("<tr><td>"+account.getM_ID()+"</td>" +
                                "<td>"+account.getM_Name()+"</td>" +
                                "<td>"+account.getM_Date()+"</td>" +
                                "<td>");
                    if(account.getM_Status()==0)
                        sb.append("<a href='EditUser.jsp?action=active&&id="+account.getM_ID()+"' style='text-decoration: none'><span class='label label-warning'>Inactive</span></a>");
                    else
                        sb.append("<a href='EditUser.jsp?action=inactive&&id="+account.getM_ID()+"' style='text-decoration: none'><span class='label label-success'>Actived</span></a>");
                    sb.append("</td>" +
                            "<td><a href='user_detail.jsp?id="+account.getM_ID()+"'><span class='label label-info'>Edit</span></a></td>" +
                            "<td><a href='EditUser.jsp?action=delete&&id="+account.getM_ID()+"'><span class='label label-danger'>Delete</span></a></td>" +
                            "<td>"+ RoleDAO.getByID(account.getM_Role()).getM_Name() + "</td></tr>");
                }
                sb.append("<tr>");
                if(page_number == 1 && total > 6) {
                    sb.append("<td><a href='user.jsp?page=2'>Next</a></td>");
                }else if(page_number == page_total && total > 6) {
                    sb.append("<td><a href='user.jsp?page=" + (page_number-1) + "'>Prev</a></td>");
                }else if(total <= 6) {
                    sb.append("<td></td>");
                }else {
                    sb.append("<td><a href='user.jsp?page=" + (page_number - 1) + "'>Prev</a>&nbsp;&nbsp;&nbsp;<a href='user.jsp?page=" + (page_number + 1) + "'>Next</a></td>");
                }
                sb.append("</tr></table></form></div></div>");
        return sb.toString();
    }
}
