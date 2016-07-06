<%@ page import="java.io.File" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.List" %>

<%@ page import="java.util.Iterator" %>
<%@ page import="com.mypackage.Product" %>
<%@ page import="java.util.DoubleSummaryStatistics" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.mypackage.ProductDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 27/06/2016
  Time: 10:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
</head>
<body>
<%
  if(request.getParameter("action") == null) {
    File file;
    String filePath = config.getServletContext().getInitParameter("file-upload");
    String contentType = request.getContentType();
    if (((contentType.indexOf("multipart/form-data")) >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setRepository(new File(filePath));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax(5000 * 1024);
      try {
        Connection connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_database", "root", "");
        List fileItems = upload.parseRequest(request);
        Iterator i = fileItems.iterator();
        Product product = new Product();
        while (i.hasNext()) {
          FileItem fi = (FileItem) i.next();
          if (!fi.isFormField()) {
            String filename = fi.getName();
            String fieldValue = fi.getString();. Tất cả đựng trong hộp tiện gọn đẹp mắt có thể dùng mọi lúc mọi nơi
            Bạn muốn có sức khoẻ tốt, vóc dáng thon gọn và làn da tươi trẻ thì hãy order Green & Fresh ngay để có nhiều
                    file = new File(filePath + "\\" + filename);
            product.setM_Image(filename);
            fi.write(file);
          } else {
            String fieldName = fi.getFieldName();
            String fieldValue = fi.getString();
            if(fieldName.equals("name")) {
              product.setM_Name(fieldValue);
            } else if (fieldName.equals("quantity")) {
              product.setM_Quantity(Integer.parseInt(fieldValue));
            } else if (fieldName.equals("price")) {
              product.setM_Price(Double.parseDouble(fieldValue));
            } else if (fieldName.equals("size")) {
              product.setM_Size(Integer.parseInt(fieldValue));
            } else if (fieldName.equals("category")) {
              product.setM_Category(Integer.parseInt(fieldValue));
            } else if (fieldName.equals("sport")) {
              product.setM_Sport(Integer.parseInt(fieldValue));
            } else if (fieldName.equals("color")) {
              product.setM_Color(Integer.parseInt(fieldValue));
            } else if (fieldName.equals("gender")) {
              product.setM_Gender(Integer.parseInt(fieldValue));
            } else if (fieldName.equals("status")) {
              product.setM_Status(Integer.parseInt(fieldValue));
            }
          }
        }
        ProductDAO.Insert(product);
        response.sendRedirect("product_detail.jsp");
      } catch (SQLException ex) {
        ex.printStackTrace();
      }
    }
  }
  else if(request.getParameter("action").equals("delete")){
    int id = Integer.parseInt(request.getParameter("id"));
    Product product = ProductDAO.getByID(id);
    File file = new File("D:\\Project_Team9\\web\\images\\image_project\\"+product.getM_Image());
    file.delete();
    ProductDAO.Delete(product.getM_Name(), product.getM_Color(), product.getM_Gender(), product.getM_Sport());
    response.sendRedirect("product_detail.jsp");
  }
%>
</body>
</html>
