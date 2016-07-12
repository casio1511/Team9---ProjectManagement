package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 01/07/2016.
 */
public class RoleJSPGUI {

    public static String ShowRole (){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='work-progres'><div class='chit-chat-heading'>Role</div>" +
                " <div class='table-responsive'>" +
                " <form method='post' action='RoleController.jsp'>" +
                " <table width='89%' class='table table-hover'>" +
                " <tr><td><b>ID</b></td><td><b>Name</b></td><td><b>Product Role</b></td>" +
                " <td><b>Bill Role</b></td><td></td></tr>");
                List<Role> list_role = RoleDAO.getAll();
                for (Role role : list_role){
                    if(role.getM_ID() != 1) {
                        sb.append("<tr>" +
                                "<td>" + role.getM_ID() + "</td>" +
                                "<td><input type='text' value='" + role.getM_Name() + "' name='name" + role.getM_ID() + "' style='border: none'>" +
                                "<input type='hidden' value='" + role.getM_ID() + "' name='" + role.getM_ID() + "'></td>");
                        if (role.getM_Product() == 0)
                            sb.append("<td><input type='checkbox' name='product" + role.getM_ID() + "' style='border: none'></td>");
                        else
                            sb.append("<td><input type='checkbox' checked name='product" + role.getM_ID() + "' style='border: none'></td>");

                        if (role.getM_Bill() == 0)
                            sb.append("<td><input type='checkbox' name='bill" + role.getM_ID() + "' style='border: none'></td>");
                        else
                            sb.append("<td><input type='checkbox' checked name='bill" + role.getM_ID() + "' style='border: none'></td>");
                        sb.append("<td><a href='RoleController.jsp?Delete=true&&id=" + role.getM_ID() + "'><span class='label label-danger'>Delete</span></a></td></tr>");
                    }
                }
                sb.append("<tr><td></td><td><input type='text' name='name' style='border: none'></td>" +
                        "<td><input type='checkbox' name='product' style='border: none'></td>" +
                        "<td><input type='checkbox' name='bill' style='border: none'></td>" +
                        "</tr><tr><td><input type='submit' name='Edit' value='Edit'></td>" +
                        "<td><input type='submit' name='Add' value='Add'></td><td></td></tr>" +
                        "</table></form></div></div>");
        return sb.toString();
    }
}
