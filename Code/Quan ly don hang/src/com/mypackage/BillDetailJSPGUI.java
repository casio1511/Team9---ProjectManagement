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
                " <h3>Summary</h3>" +
                " <table class='table table-bordered'>" +
                " <tr><td>Delivery</td><td>Shipping</td></tr>" +
                "  <tr><td>Total Bill</td>" +
                "   <td>"+bill.getM_Total()+"</td></tr></table>" +
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
}
