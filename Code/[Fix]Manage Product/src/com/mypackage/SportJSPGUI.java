package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 02/07/2016.
 */
public class SportJSPGUI {

    public static String getSportAdmin (){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
            sb.append("<div class='work-progres'>" +
                    "<div class='chit-chat-heading'>Sport Management</div>" +
                    "<div class='table-responsive'>" +
                    "<form method='post' action='EditType.jsp' onsubmit='return checkSubmitSport()'>" +
                    "<table class='table table-hover'>" +
                    "<thead><tr><th>ID</th><th>Name</th><th></th><th></th></tr>" +
                    "</thead><tbody>");
                    List<Sport> list_sport = SportDAO.getAll();
                    for(Sport sport : list_sport){
                        sb.append("<tr><td>"+sport.getM_ID()+"</td><td>" +
                        "<input type='text' value='"+sport.getM_Name()+"' name='sport"+sport.getM_ID()+"' style='border:none'></td>" +
                        "<td><a href='EditType.jsp?type=sport&&id="+sport.getM_ID()+"' style='text-decoration: none'><span class='label label-danger'>Delete</span></a></td></tr>");
                    }
                    sb.append("<tr><td></td><td colspan='2'><input type='text' name='namesport' id='namesport' onchange='checkNameSport()' style='border: none;'></td></tr>" +
                        "<tr><td colspan='3'><input type='submit' name='sportsubmit' value='Save'></td></tr>" +
                        "</tbody></table></form></div></div>");
        return sb.toString();
    }
}
