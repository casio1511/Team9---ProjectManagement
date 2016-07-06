<%@ page import="com.mypackage.AccountDAO" %>
<%@ page import="java.util.stream.StreamSupport" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 29/06/2016
  Time: 1:12 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  if(request.getParameter("action")!=null) {
    if (request.getParameter("action").equals("delete")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        AccountDAO.Delete(id);
      }
    } else if (request.getParameter("action").equals("active")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        AccountDAO.activeByID(id);
      }
    } else if (request.getParameter("action").equals("inactive")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        AccountDAO.inactiveByID(id);
      }
    }
    response.sendRedirect("user.jsp");
  } else if(request.getParameter("edit")!=null){
    if(request.getParameter("role")!=null && !request.getParameter("role").equals("")&&request.getParameter("id") != null && !request.getParameter("id").trim().equals("")){
      int role = Integer.parseInt(request.getParameter("role"));
      int id = Integer.parseInt(request.getParameter("id"));
      AccountDAO.setRole(id, role);
      //response.sendRedirect("user_detail.jsp?id="+id);
    }
    response.sendRedirect("user.jsp");
  }

%>
</body>
</html>
