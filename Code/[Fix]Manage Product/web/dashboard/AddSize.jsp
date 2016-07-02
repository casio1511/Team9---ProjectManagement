<%@ page import="com.mypackage.Product" %>
<%@ page import="com.mypackage.ProductDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 28/06/2016
  Time: 5:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  int size = Integer.parseInt(request.getParameter("size"));
  Product product = ProductDAO.getByID(id);
  product.setM_Size(size);
  ProductDAO.Insert(product);
  response.sendRedirect("product_detail.jsp");
%>
</body>
</html>
