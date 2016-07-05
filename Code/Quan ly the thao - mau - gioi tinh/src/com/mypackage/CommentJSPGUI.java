package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 13/06/2016.
 */
public class CommentJSPGUI {
        public static String showCommentByID (List<Comment> list){
                StringBuilder sb = new StringBuilder();
                for(Comment comment : list){
                        sb.append("<br><div>"+
                                "<ul class='nav nav-pills tab-nike' role='tablist'>"+
                                "<li role='presentation' class='active'></li>"+
                                "<li role='presentation'><b>"+comment.getM_Username()+" ("+comment.getM_Email()+")</b></li>"+
                                "<li role='presentation'></li></ul>"+
                                "<div class='tab-content'>"+
                                "<div role='tabpanel' class='tab-pane active' id='home'>"+
                                "<p style='color: black'>"+comment.getM_Content()+"</p>"+
                                "</div><div>"+comment.getM_Date()+"</div></div></div>");
                }
                return sb.toString();
        }

}
