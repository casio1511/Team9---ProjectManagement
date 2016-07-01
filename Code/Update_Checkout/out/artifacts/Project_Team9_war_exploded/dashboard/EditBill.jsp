<%@ page import="com.mypackage.BillDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 29/06/2016
  Time: 12:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
if(request.getParameter("action")!=null && request.getParameter("action").equals("active")){
    if(request.getParameter("id")!=null && !request.getParameter("id").trim().equals("")) {
      System.out.print("test");
      int id = Integer.parseInt(request.getParameter("id"));
      BillDAO.activeBill(id);
    }
  }
  response.sendRedirect("bill.jsp");
%>
</body>
</html>
