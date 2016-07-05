package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 02/07/2016.
 */
public class GenderJSPGUI {

    public static String getGenderAdmin () {
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='work-progres'>" +
                "<div class='chit-chat-heading'>Gender Management</div>" +
                "<div class='table-responsive'><div class='table-responsive'>" +
                "<form method='post' action='EditType.jsp' onsubmit='return checkSubmitGender()'>" +
                "<table class='table table-hover'>" +
                "<thead><tr><th>ID</th><th>Name</th><th></th><th></th></tr></thead>" +
                "<tbody>");
                List<Gender> list_gender = GenderDAO.getAll();
                for(Gender gender : list_gender){
                sb.append("<tr><td>"+gender.getM_ID()+"</td>" +
                    "<td><input type='text' value='"+gender.getM_Name()+"' name='gender"+gender.getM_ID()+"' style='border:none'></td>" +
                    "<td><a href='EditType.jsp?type=gender&&id="+gender.getM_ID()+"' style='text-decoration: none'><span class='label label-danger'>Delete</span></a></td></tr>");
                }
                sb.append("<tr><td></td><td colspan='2'><input type='text' name='namegender' id='namegender' required style='border:none' onchange='checkNameGender()'></td></tr>" +
                    "<tr><td colspan='3'><input type='submit' name='gendersubmit' value='Save'></td></tr></tbody></table></form></div></div></div>");
        return sb.toString();
    }
}
