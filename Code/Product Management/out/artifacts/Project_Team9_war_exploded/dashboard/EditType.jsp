<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mypackage.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 28/06/2016
  Time: 5:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  //edit
if(request.getParameter("colorsubmit") != null) {
    List<Color> list = ColorDAO.getAll();
    for(Color color : list){
      String name = "";
      if (request.getParameter("color" + color.getM_ID()) != null && !request.getParameter("color"+color.getM_ID()).trim().equals("")) {
        name = request.getParameter("color" + color.getM_ID());
        ColorDAO.updateName(color.getM_ID(), name);
      }
    }
  }
else if(request.getParameter("gendersubmit") != null) {
  List<Gender> list = GenderDAO.getAll();
  for(Gender gender : list){
    String name = "";
    if (request.getParameter("gender" + gender.getM_ID()) != null && !request.getParameter("gender"+gender.getM_ID()).trim().equals("")) {
      name = request.getParameter("gender" + gender.getM_ID());
      GenderDAO.updateName(gender.getM_ID(), name);
    }
  }
}
else if(request.getParameter("sportsubmit") != null) {
  List<Sport> list = SportDAO.getAll();
  for(Sport sport : list){
    String name = "";
    if (request.getParameter("sport" + sport.getM_ID()) != null && !request.getParameter("sport"+sport.getM_ID()).trim().equals("")) {
      name = request.getParameter("sport" + sport.getM_ID());
      SportDAO.updateName(sport.getM_ID(), name);
    }
  }
}
  //delete
  if(request.getParameter("type")!=null) {
    if (request.getParameter("type").equals("color")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        ColorDAO.Delete(id);
      }
    } else if (request.getParameter("type").equals("gender")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        GenderDAO.Delete(id);
      }
    } else if (request.getParameter("type").equals("sport")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        SportDAO.Delete(id);
      }
    }
  }

  //add
  if(request.getParameter("namecolor")!=null){
    String name = request.getParameter("namecolor");
    if(!name.trim().equals("")){
      ColorDAO.Insert(name);
    }
  }
  else if(request.getParameter("namegender")!=null){
    String name = request.getParameter("namegender");
    if(!name.trim().equals("")){
      GenderDAO.Insert(name);
    }
  }
  else if(request.getParameter("namesport")!=null){
    String name = request.getParameter("namesport");
    if(!name.trim().equals("")){
      SportDAO.Insert(name);
    }
  }

  response.sendRedirect("dashboard.jsp");
%>
</body>
</html>
