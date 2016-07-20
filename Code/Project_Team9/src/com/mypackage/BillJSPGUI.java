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

    public static String BillAdmin (int page_number, int total, int page_total){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        sb.append("<div class='appearance'><h3 .class='ghj'></h3><div class='work-progres'>" +
                "<div class='chit-chat-heading'>All Bills</div>" +
                "<div class='table-responsive'>" +
                "<form method='post' action='AddSize.jsp'>" +
                "<table width='89%' class='table table-hover'>" +
                "<tr><td>ID</td><td>Buyer</td><td>Date</td><td>Status</td><td></td></tr>");
        List<Bill> list_bill = BillDAO.getAllPagingLastert(page_number, 6);
        for(Bill bill : list_bill){
                sb.append("<tr><td>"+bill.getM_ID()+"</td>" +
                    "<td>"+bill.getM_Name()+"</td>" +
                    "<td>"+bill.getM_Date()+"</td><td>");
                if(bill.getM_Status()==0)
                    sb.append("<a href='EditBill.jsp?action=active&&id="+bill.getM_ID()+"' style='text-decoration: none'>" +
                            "<span class='label label-warning'>Non-delivered</span></a>");
                else
                    sb.append("<span class='label label-success'>Delivered</span>");
                sb.append("</td><td><a href='bill_detail.jsp?id="+bill.getM_ID()+"' style='text-decoration: none'>" +
                     "<span class='label label-info'>Detail</span></a></td></tr>");
                }
                sb.append("<tr>");
                if(page_number == 1 && total > 6)
                    sb.append("<td><a href='bill.jsp?page=2'>Next</a></td>");
                else if(page_number == page_total && total > 6)
                    sb.append("<td><a href='bill.jsp?page="+(page_number-1)+"'>Prev</a></td>");
                else if(total <= 6)
                    sb.append("<td></td>");
                else
                    sb.append("<td><a href='bill.jsp?page="+(page_number-1)+"'>Prev</a>&nbsp;&nbsp;&nbsp;" +
                            "<a href='bill.jsp?page="+(page_number+1)+"'>Next</a></td>");
                sb.append("</tr></table></form></div></div><div class='clearfix'> </div></div>");
        return sb.toString();
    }
}
