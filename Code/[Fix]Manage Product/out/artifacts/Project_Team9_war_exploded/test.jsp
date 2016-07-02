<%@ page import="com.mypackage.SendMailJSPGUI" %>
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
<script>
  function Test(){
    var check = document.getElementById("test");
    document.getElementById("result").innerHTML="da vo";
  }
</script>
<%=SendMailJSPGUI.test()%>
</body>
</html>
