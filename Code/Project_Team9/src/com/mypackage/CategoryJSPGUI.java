package com.mypackage;

import java.util.List;

/**
 * Created by Phuong Tran on 15/07/2016.
 */
public class CategoryJSPGUI {
    public static String getCategoryAdmin (){
        StringBuilder sb = new StringBuilder();
        sb.append("<div class='work-progres'><div class='chit-chat-heading'>Category Management</div>" +
                "<form method='post' action='EditType.jsp' onsubmit='return checkSubmitCategory()'>" +
                "<table class='table table-hover'>" +
                "<thead><tr><th>ID</th><th>Name</th><th></th></tr></thead>" +
                "<tbody>");
        List<Category> list_category = CategoryDAO.getAll();
        for(Category category : list_category){
            sb.append("<tr><td>"+category.getM_ID()+"</td>" +
                    "<td><input type='text' name='category"+category.getM_ID()+"' value='"+category.getM_Name()+"' style='border: none'></td>" +
                    "<td><a href='EditType.jsp?type=category&&id="+category.getM_ID()+"' style='text-decoration: none'><span class='label label-danger'>Delete</span></a></td></tr>");
        }
        sb.append("<tr><td></td><td colspan='2'><input type='text' name='namecategory' id='namecategory' style='border:none' onchange='checkNameCategory()'></td></tr>" +
                "<tr><td colspan='3'><input type='submit' name='categorysubmit' value='Edit'></td></tr></tbody></table></form></div>");
        return sb.toString();
    }
}
