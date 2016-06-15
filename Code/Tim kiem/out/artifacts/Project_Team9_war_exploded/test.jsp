<%@ page import="com.mypackage.Product" %>
<%@ page import="com.mypackage.ProductDAO" %>
<%@ page import="com.mypackage.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 08/06/2016
  Time: 10:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
List<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");
  for(Cart item: cart){%>
    <%=item.getM_product().getM_Name()%>
<%=item.getM_product().getM_Size()%>
  <%}
%>
</body>
</html>
