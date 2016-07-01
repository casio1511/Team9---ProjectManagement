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

    public static String confirm(){
        StringBuilder sb = new StringBuilder();
        sb.append("<a href='http://localhost:8080/index.jsp'>test</a>");
        return sb.toString();
    }
}
