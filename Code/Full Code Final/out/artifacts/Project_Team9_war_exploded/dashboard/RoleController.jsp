<%@ page import="com.mypackage.Role" %>
<%@ page import="com.mypackage.RoleDAO" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 01/07/2016
  Time: 4:14 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  if(request.getParameter("Add")!=null ) {
    Role role = new Role();
    role.setM_Name(request.getParameter("name"));
    role.setM_Product(0);
    if(request.getParameter("product")!=null && request.getParameter("product").equals("on"))
      role.setM_Product(1);
    role.setM_Bill(0);
    if(request.getParameter("bill")!=null && request.getParameter("bill").equals("on"))
      role.setM_Bill(1);
    role.setM_Account(0);
    if(request.getParameter("account")!=null && request.getParameter("account").equals("on"))
      role.setM_Account(1);
    RoleDAO.Insert(role);
  }
  //fix
  else if(request.getParameter("Edit")!=null){
    List<Role> list = RoleDAO.getAll();
    for(Role role : list){
      int id = role.getM_ID();
      if(request.getParameter("name"+id)!=null&& !request.getParameter("name"+id).trim().equals(""))
        role.setM_Name(request.getParameter("name"+id));
      if(request.getParameter("product"+id)!=null)
        role.setM_Product(1);
      else
        role.setM_Product(0);
      if(request.getParameter("bill"+id)!=null)
        role.setM_Bill(1);
      else
        role.setM_Bill(0);
      RoleDAO.update(role);
    }
  } else if(request.getParameter("Delete")!=null){
    if(request.getParameter("id")!=null && !request.getParameter("id").trim().equals("")) {
      int id = Integer.parseInt(request.getParameter("id"));
      RoleDAO.Delete(id);
    }
  }
  response.sendRedirect("/dashboard/user.jsp");
%>
</body>
</html>
