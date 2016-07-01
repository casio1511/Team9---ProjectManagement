<%@ page import="com.mypackage.Product" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.mypackage.ProductDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 29/06/2016
  Time: 1:08 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  File file, file1;
  String filePath = config.getServletContext().getInitParameter("file-upload");
  String contentType = request.getContentType();
  if (((contentType.indexOf("multipart/form-data")) >= 0)) {
    DiskFileItemFactory factory = new DiskFileItemFactory();
    factory.setRepository(new File(filePath));
    ServletFileUpload upload = new ServletFileUpload(factory);
    upload.setSizeMax(5000 * 1024);
    String tenanh = "";
    try {
      Connection connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_database", "root", "");
      List fileItems = upload.parseRequest(request);
      Iterator i = fileItems.iterator();
      Product product = new Product();
      while (i.hasNext()) {
        FileItem fi = (FileItem) i.next();
        if (!fi.isFormField()) {
          if (fi.getSize() > 0) {
            String filename = fi.getName();
            String fieldValue = fi.getString();
            file = new File(filePath + "\\" + filename);
            file1 = new File(filePath + "\\" + tenanh);
            if (file1.delete()) {
              product.setM_Image(filename);
            }
            fi.write(file);
          } else {
            product.setM_Image("");
          }
        } else {
          String fieldName = fi.getFieldName();
          String fieldValue = fi.getString();
          if (fieldName.equals("name")) {
            product.setM_Name(fieldValue);
          } else if (fieldName.equals("id")) {
            product.setM_ID(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("category")) {
            product.setM_Category(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("sport")) {
            product.setM_Sport(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("gender")) {
            product.setM_Gender(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("color")) {
            product.setM_Color(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("size")) {
            product.setM_Size(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("quantity")) {
            product.setM_Quantity(Integer.parseInt(fieldValue));
          } else if (fieldName.equals("price")) {
            product.setM_Price(Double.parseDouble(fieldValue));
          } else if (fieldName.equals("status")) {
            product.setM_Status(Integer.parseInt(fieldValue));
          }
        }
      }
      ProductDAO.Edit(product);
      response.sendRedirect("product_edit.jsp?id="+product.getM_ID());
    } catch (SQLException ex) {
      ex.printStackTrace();
    }
  }
%>
</body>
</html>
