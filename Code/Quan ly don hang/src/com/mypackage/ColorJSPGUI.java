package com.mypackage;

import java.util.List;

/**
 * Created by Phuong Tran on 02/07/2016.
 */
public class ColorJSPGUI {
    public static String getColorAdmin (){
        StringBuilder sb = new StringBuilder();
        sb.append("<div class='work-progres'><div class='chit-chat-heading'>Color Management</div>" +
                "<form method='post' action='EditType.jsp' onsubmit='return checkSubmitColor()'>" +
                "<table class='table table-hover'>" +
                "<thead><tr><th>ID</th><th>Name</th><th></th></tr></thead>" +
                "<tbody>");
        List<Color> list_color = ColorDAO.getAll();
        for(Color color : list_color){
            sb.append("<tr><td>"+color.getM_ID()+"</td>" +
                    "<td><input type='text' name='color"+color.getM_ID()+"' value='"+color.getM_Name()+"' style='border: none'></td>" +
                    "<td><a href='EditType.jsp?type=color&&id="+color.getM_ID()+"' style='text-decoration: none'><span class='label label-danger'>Delete</span></a></td></tr>");
        }
        sb.append("<tr><td></td><td colspan='2'><input type='text' name='namecolor' id='namecolor' style='border:none' onchange='checkNameColor()'></td></tr>" +
                "<tr><td colspan='3'><input type='submit' name='colorsubmit' value='Edit'></td></tr></tbody></table></form></div>");
        return sb.toString();
    }
}
