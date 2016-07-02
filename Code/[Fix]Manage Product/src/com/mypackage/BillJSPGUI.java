package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 29/06/2016.
 */
public class BillJSPGUI {

    public static String PersonalBill (List<Bill> list){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='cart-header2'><div class='close2'></div>" +
                " <div class='cart-sec simpleCart_shelfItem'><div class='col-md-3 cart-total col-lg-12'>" +
                " <table class='cart-sec simpleCart_shelfItem' width='958'>" +
                "  <tr><td width='10%'><b>ID</b></td>" +
                "      <td width='44%'><b>PRODUCT</b></td>" +
                "      <td width='15%'><b>DATE</b></td>" +
                "      <td width='17%'><b>TOTAL</b></td>" +
                "      <td width='14%'><b>STATUS</b></td></tr>" +
                "      <hr class='featurette-divider'>");
        for(Bill bill : list) {
            List<BillDetail> list_detail = BillDetailDAO.getDetailByID(bill.getM_ID());
            Product product = ProductDAO.getByID(list_detail.get(0).getM_Product());
            sb.append(" <tr><td><a href='transaction_details.jsp?id="+bill.getM_ID()+"'>" + bill.getM_ID() + "</a></td>" +
                    "   <td>" + product.getM_Name() + "</td>" +
                    "   <td>" + bill.getM_Date() + "</td>" +
                    "   <td>" + nf.format(bill.getM_Total()) + "</td>");
            if (bill.getM_Status() == 0)
                sb.append("<td>Not Deliver</td>");
            else
                sb.append("<td>Delivered</td>");
        }
        sb.append("</table><hr class='featurette-divider'></div></div></div>");
        return sb.toString();
    }
}
