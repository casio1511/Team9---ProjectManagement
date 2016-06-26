<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%
  String tensanpham = request.getParameter("tensanpham");// ten này lấy ở đâu ?

  String quantity =request.getParameter("quantity");
  String price = request.getParameter("price");
  String total= request.getParameter("sum");


  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_database", "root", "");
  Statement st = con.createStatement();
  String value = " (\" " + tensanpham + " \",\" " + quantity + " \",\" " + price + " \",\" " + total + " \") ";
  String query = "insert into checkout(product_name,quantity,price,total) values " + value;
  int i = st.executeUpdate(query);
  if (i > 0)// chút để
  {
    session.setAttribute("tensanpham", tensanpham);
    response.sendRedirect("checkout.jsp");
  }
%>
</body>
</html>
