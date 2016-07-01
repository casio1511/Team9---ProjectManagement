package com.mypackage;

import java.text.NumberFormat;
import java.util.List;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class ProductJSPGUI {
    public static String showIndex(List<Product> list){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        for(int i=0; i<6; i++){
            Product product = list.get(i);
            sb.append("<div class='col-md-4 grid-stn simpleCart_shelfItem'>" +
                    "<div class='ih-item square effect3 bottom_to_top'>" +
                    "<div class='bottom-2-top'>" +
                    "<div class='img'><img src='images/image_project/"+product.getM_Image()+"' alt='/' class='img-responsive gri-wid' width='300px' height='300px'></div>" +
                    "<div class='info'>" +
                    "<div class='pull-left styl-hdn'>" +
                    "<h3>"+product.getM_Name()+"</h3>" +
                    "</div>" +
                    "<div class='pull-right styl-price'>" +
                    "<p><a href='#' class='item_add'><span class='glyphicon glyphicon-shopping-cart grid-cart' aria-hidden='true'></span><span class='item_price'>"+nf.format(product.getM_Price())+" dong</span></a></p>" +
                    "</div><div class='clearfix'></div></div></div>" +
                    "</div><div class='quick-view'>" +
                    "<a href='single.jsp?id="+product.getM_ID()+"'>Quick view</a></div></div>");
        }
        return sb.toString();
    }

    public static String showRelatedProduct (List<Product> list){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        for(int i=0; i<3; i++){
            Product product = list.get(i);
            sb.append("<div class='col-md-4 grid-stn simpleCart_shelfItem'>" +
                    "<div class='ih-item square effect3 bottom_to_top'>" +
                    "<div class='bottom-2-top'>" +
                    "<div class='img'><img src='images/image_project/"+product.getM_Image()+"' alt='/' class='img-responsive gri-wid'></div>" +
                    "<div class='info'><div class='pull-left styl-hdn'>" +
                    "<h3>"+product.getM_Name()+"</h3></div>" +
                    "<div class='pull-right styl-price'>" +
                    "<p><a href='#' class='item_add'><span class='glyphicon glyphicon-shopping-cart grid-cart' aria-hidden='true'></span> " +
                    "<span class='item_price'>"+product.getM_Price()+" dong</span></a></p>" +
                    "</div><div class='clearfix'></div></div></div></div>" +
                    "<div class='quick-view'><a href='single.jsp'>Quick view</a>" +
                    "</div></div>");
        }
        return sb.toString();
    }

    public static String showGetAllPaging (List<Product> list){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        for(Product product : list){
            sb.append("<div class='col-md-4 grid-stn simpleCart_shelfItem'>" +
                    "<div class='ih-item square effect3 bottom_to_top'>" +
                    "<div class='bottom-2-top'>" +
                    "<div class='img'><img src='images/image_project/"+product.getM_Image()+"' alt='class='img-responsive gri-wid' width='200px' height='200px'></div>" +
                    "<div class='info'><div class='pull-left styl-hdn'>" +
                    "<h3>"+product.getM_Name()+"</h3></div><div class='pull-right styl-price'>" +
                    "<p><a href='single.jsp?id="+product.getM_ID()+"' class='item_add'>" +
                    "<span class='glyphicon glyphicon-shopping-cart grid-cart' aria-hidden='true'></span>" +
                    "<span class='item_price'>"+nf.format(product.getM_Price())+" dong</span></a></p>" +
                    "</div><div class='clearfix'></div></div></div></div>" +
                    "<div class='quick-view'><a href='single.jsp?id="+product.getM_ID()+"'>Quick view</a>" +
                    "</div></div>");
        }
        return sb.toString();
    }

    public static String checkOut (List<Cart> cart){
        StringBuilder sb = new StringBuilder();
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);
        for(Cart item : cart){
            Product product = item.getM_product();
            sb.append("<div class='cart-header'>" +
                    "<form method='post' action='UpdateCart.jsp'>" +
                    "<a href='UpdateCart.jsp?action=delete&&ID="+product.getM_ID()+"'><div class='close1'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></div></a>" +
                    "<div class='cart-sec simpleCart_shelfItem'>" +
                    "<div class='cart-item cyc'>" +
                    "<img src='images/image_project/"+product.getM_Image()+"' class='img-responsive' alt=''/>" +
                    "</div><div class='cart-item-info'><ul class='qty'>" +
                    "<li><p>Size : "+product.getM_Size()+"</p></li>" +
                    "<li><p>Qty <input type='number' value='"+item.getM_quantity()+"' name='quantity"+item.getM_product().getM_ID()+"' width='50px''></p>" +
                    "<input type='hidden' name='id' value='"+item.getM_product().getM_ID()+"'></li>" +
                    "<li><p>Price each : "+nf.format(product.getM_Price())+" dong</p></li></ul>" +
                    "<div class='delivery'><p>Service Charges : 0</p>" +
                    "<span>Delivered in 2-3 bussiness days</span>" +
                    "<div class='clearfix'></div></div></div>" +
                    "</form>" +
                    "<div class='clearfix'></div>");
        }
        return sb.toString();
    }
}
