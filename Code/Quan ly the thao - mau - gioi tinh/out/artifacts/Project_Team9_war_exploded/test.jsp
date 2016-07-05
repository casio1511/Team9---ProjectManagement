<%@ page import="java.lang.reflect.AccessibleObject" %>
<%@ page import="com.mypackage.AccountDAO" %>
<%@ page import="com.mypackage.Account" %>
<%@ page import="com.mypackage.MD5" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 29/06/2016
  Time: 2:50 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
String test = MD5.getMD5("admin");
  System.out.print(test);
%>
</body>
</html>
