package com.mypackage;

import java.text.NumberFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Phuong Tran on 24/06/2016.
 */
public class SendMailJSPGUI {

    public static String Receipt (String name, Date date, int id, double total, String address, List<Product> list){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<table style='border-collapse: collapse; background-color: lightgray; border: solid 1px white;' width='400px>" +
                "  <tr style='border: solid 1px white;'><td style='border: solid 1px white; padding-left: 5px'>" +
                " <p style='color:gray'>Name</p> <p>" + name + "</p></td>" +
                " <td rowspan='3' style='border: solid 1px white; padding-left: 5px'><p style='color:gray'>Address</p>" + address + "</td>" +
                " <td rowspan='3' style='border: solid 1px white; padding-left: 5px'><p style='color:gray'>Total</p>" + nf.format(total) + "VND</td></tr>" +
                " <tr style='border: solid 1px white;'>" +
                " <td style='border: solid 1px white; padding-left: 5px'><p style='color:gray'>Date</p>" + date + "</td></tr>" +
                " <tr style='border: solid 1px white;'>" +
                " <td style='border: solid 1px white; padding-left: 5px'><p style='color:gray'>Order ID</p>" + id + "</td></tr>\n" +
                "</table>");
        sb.append("<br><br>");
        sb.append("<table style='border-collapse: collapse; border: 10px;' width='400px'>");
        sb.append("<tr style='background-color: lightgray'>"+
                " <td colspan='2'>Product</td><td align='center'>Quantity</td><td align='center'>Price</td></tr>");
        for(Product product : list){
            sb.append("<tr>" +
                " <td align='center' style='padding-top: 5px; padding-left: 5px; padding-bottom: 5px'>" +
                " <img src='images/image_project/"+product.getM_Image()+" width='100px' height='100px'></td>" +
                " <td align='center'>"+product.getM_Name()+"</td>" +
                " <td align='center'>"+product.getM_Quantity()+"</td>" +
                " <td align='center'>" + nf.format(product.getM_Price())+"</td>" +
                "  </tr>");
        }
        sb.append("</table>");
        return sb.toString();
    }

    public static String confirm(String name, String email){
        StringBuilder sb = new StringBuilder();
        sb.append("<table width='700px' align='center'>\n" +
                "  <tr><td style='background-color: #A5E126; font-size: 18px; color: white' width='100%' height='50px' align='center'>Thank you and welcome to N-Air website</td></tr>\n" +
                "  <tr><td style='font-size: 13px; padding-top: 10px; padding-left: 20px'>Hi "+name+"</td></tr>"+
                "  <tr><td style='font-size: 13px; padding-top: 10px; padding-left: 20px'>Welcome to N-Air website</td></tr>"+
                "  <tr><td style='font-size: 13px; padding-top: 10px; padding-left: 20px'>Please click below to verify your email address</td></tr>\n" +
                "  <tr><td align='center'><a href='http://localhost:8080/active_email.jsp?active=1&&email="+email+"' class='button_email' style='background-color: #2F4F4F;\n" +
                "  border: none; color: white; padding: 15px 32px; opacity: 0.5;" +
                "  text-align: center; text-decoration: none; display: inline-block;\n" +
                "  font-size: 14px; margin: 4px 2px; cursor: pointer;'><b>Verify</b></a></td></tr></table>");
        return sb.toString();
    }
}
