<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 01/07/2016
  Time: 12:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%=request.getParameter("test")%>
<form method="get" action="test.jsp">
  <input type="checkbox" name="test">
  <input type="submit" value="Submit">
</form>
</body>
</html>
