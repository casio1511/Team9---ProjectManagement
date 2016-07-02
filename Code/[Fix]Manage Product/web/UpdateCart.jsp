<%@ page import="com.mypackage.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mypackage.Product" %>
<%@ page import="com.mypackage.ProductDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 11/06/2016
  Time: 12:43 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  ArrayList<Cart> list = (ArrayList<Cart>) session.getAttribute("cart");
  //Product product=new Product();
  if(list!=null) {
    //kiem tra hanh dong nao
    String action="";
    if (request.getParameter("action")!=null){
      action= request.getParameter("action");
    }
    int total = (Integer)session.getAttribute("total");
    //sua so luong sp trong cart
    if(!action.equals("delete")){
      for (int i=0; i<list.size(); i++) {
        Cart cart = list.get(i);
        int _id = cart.getM_product().getM_ID();
        String id = String.valueOf(_id);
        String f = "quantity" + id;
        String sl = request.getParameter(f);
        Product product = ProductDAO.getByID(_id);
        if (sl!=null) {
          //số lượng của sản phẩm cần xóa
          int soluong = Integer.parseInt(sl);
          //so luong < 0 thi ko cap nhat
          if(soluong < 0) {
            //response.sendRedirect("checkout.jsp");
          }
          //neu so luong = 0 thi xoa sp
          else if (soluong == 0){
            total = total - cart.getM_quantity();
            session.setAttribute("total", total);
            list.remove(cart);
          }
          else if (soluong > 0) {
              //neu so luong it hon so luong trong cart
              if(soluong < cart.getM_quantity())
                total = total - (cart.getM_quantity() - soluong);
              else {
                if(soluong <= product.getM_Quantity())
                  total = total + (soluong - cart.getM_quantity());
              }
            session.setAttribute("total", total);
            if(soluong <= product.getM_Quantity())
              cart.setM_quantity(soluong);
          }
        }
        else
          cart.getM_quantity();
      }
    }
    //xoa san pham
    else {
      System.out.print("test");
      for (int i = 0; i < list.size(); i++) {
        String id = "";
        id = request.getParameter("ID");
        int _id = 0;
        if (id != null) {
          _id = Integer.parseInt(id);
        }
        Cart cart = list.get(i);
        if (cart.getM_product().getM_ID() == _id) {
          total = total - cart.getM_quantity();
          session.setAttribute("total", total);
          list.remove(cart);
        }
      }
    }
    if(total < 0)
      session.setAttribute("total", 0);
    if(list.size() == 0)
      session.setAttribute("cart", null);

  }
  response.sendRedirect("checkout.jsp");
%>
</body>
</html>
