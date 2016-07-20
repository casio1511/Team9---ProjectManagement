package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 29/06/2016.
 */
public class BillDetailJSPGUI {

    public static String DetailBill (Bill bill, List<BillDetail> list){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='col-md-3 cart-total col-lg-12'><div class='col-md-6 col-lg-4'>" +
                " <h3><b>Summary</b></h3><br>" +
                " <table class='table table-bordered'>" +
                " <tr><td>Delivery</td><td>Shipping</td></tr>" +
                "  <tr><td>Total Bill</td>" +
                "   <td>"+nf.format(bill.getM_Total())+"</td></tr></table>" +
                " <h3>Customer Details</h3>" +
                "  <table class='table table-bordered'>" +
                "   <tr><td width='28%'>Full name</td>" +
                "   <td width='72%'>"+bill.getM_Name()+"</td></tr>" +
                "  <tr><td>Phone</td><td>"+bill.getM_Phone()+"</td></tr>" +
                "  <tr><td>Address</td><td>"+bill.getM_Address()+"</td></tr>" +
                "  <tr><td>Email</td><td>"+bill.getM_Email()+"</td></tr>" +
                "  </table></div>");
        for(BillDetail detail : list) {
            Product product = ProductDAO.getByID(detail.getM_ID());
            sb.append("<div class='col-md-6 col-lg-8'>" +
                    " <p><h3>Product Details</h3></p><table width='71%' class='table table-bordered'>" +
                    " <tr><td width='52%'>Product Name</td>" +
                    " <td width='17%'>Price</td><td width='10%'>Quantity</td>" +
                    " <td width='21%'>Sum</td></tr>" +
                    " <tr><td width='52%'>"+product.getM_Name()+"</td>" +
                    " <td width='17%'>"+nf.format(product.getM_Price())+" dong</td>" +
                    " <td width='10%'>"+detail.getM_Product()+"</td>" +
                    " <td width='21%'>"+nf.format(detail.getM_Total())+" dong</td></tr>" +
                    " </table></div>");
        }
        return sb.toString();
    }

    public static String DetailBillAdmin (Bill bill){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='appearance'><div class='col-md-6 col-lg-5'>" +
                "<p><h3>Bill Details</h3>" +
                "<table class='table table-bordered'>" +
                "<thead><tr><th width='28%'>Bill ID</th>" +
                "<th width='72%'>"+bill.getM_ID()+"</th></tr></thead><tbody>" +
                "<tr><td>Date</td><td>"+bill.getM_Date()+"</td></tr>" +
                "<tr><td>Status</td>");
        if(bill.getM_Status() == 0)
            sb.append("<td>Non-delivered</td>");
        else
            sb.append("<td>Delivered</td>");
        sb.append("</tr></tbody></table>" +
                "<h3>Summary</h3><table class='table table-bordered'><tbody>" +
                "<tr><td>Delivery</td><td>Shipping</td></tr>");
        sb.append("<tr><td>Total Bill</td><td>"+nf.format(bill.getM_Total())+" dong</td></tr></tbody></table>" +
                "<h3>Customer Details</h3><table class='table table-bordered'>" +
                "<tbody><tr><td>Full name</td><td>"+bill.getM_Name()+"</td></tr>" +
                "<tr><td>Phone</td><td>"+bill.getM_Phone()+"</td></tr>" +
                "<tr><td>Address</td><td>"+bill.getM_Address()+"</td></tr><tr>" +
                "<td>Email</td><td>"+bill.getM_Email()+"</td></tr></tbody></table></div>" +
                "<div class='col-md-6 col-lg-7'>");
                List<BillDetail> list_detail = BillDetailDAO.getDetailByID(bill.getM_ID());
                sb.append("<p><h3>Product Details</h3></p>" +
                "<table width='112%' class='table table-bordered'>" +
                "<thead><tr><th width='42%'>Product Name</th><th width='24%'>Price</th>" +
                "<th width='12%'>Quantity</th><th width='22%'>Total</th></tr></thead>" +
                "<tbody>");
        for(BillDetail detail : list_detail){
                Product product = ProductDAO.getByID(detail.getM_Product());
                sb.append("<tr><td width='42%'>"+product.getM_Name()+"</td>" +
                    "<td width='24%'>"+nf.format(detail.getM_Price())+" dong</td>" +
                    "<td width='12%'>"+detail.getM_Quantity()+"</td>" +
                    "<td width='22%'>"+nf.format(detail.getM_Total())+" dong</td></tr>");
        }
        sb.append("</tbody></table></div><div class='clearfix'> </div></div>");
        return sb.toString();
    }
}
