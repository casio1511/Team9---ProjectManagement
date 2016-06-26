<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mypackage.*" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
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
  SendEmail.main(SendMailJSPGUI.test(), "hellenp1995@gmail.com");
%>
</body>
</html>
