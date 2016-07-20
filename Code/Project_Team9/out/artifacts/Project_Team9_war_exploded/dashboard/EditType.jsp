<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mypackage.*" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
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
        int flag = 1;
        Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
        Matcher m = p.matcher(name);
        boolean b = m.find();
        if(name.matches(".*\\d.*") || (b))
          flag = 0;
        if(flag == 1)
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
      int flag = 1;
      Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
      Matcher m = p.matcher(name);
      boolean b = m.find();
      if(name.matches(".*\\d.*") || (b))
        flag = 0;
      if(flag == 1)
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
      int flag = 1;
      Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
      Matcher m = p.matcher(name);
      boolean b = m.find();
      if(name.matches(".*\\d.*") || (b))
        flag = 0;
      if(flag == 1)
        SportDAO.updateName(sport.getM_ID(), name);
    }
  }
}
else if(request.getParameter("categorysubmit") != null) {
  List<Category> list = CategoryDAO.getAll();
  for(Category category : list){
    String name = "";
    if (request.getParameter("category" + category.getM_ID()) != null && !request.getParameter("category"+category.getM_ID()).trim().equals("")) {
      name = request.getParameter("category" + category.getM_ID());
      int flag = 1;
      Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
      Matcher m = p.matcher(name);
      boolean b = m.find();
      if(name.matches(".*\\d.*") || (b))
        flag = 0;
      if(flag == 1)
        CategoryDAO.updateName(category.getM_ID(), name);
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
    } else if (request.getParameter("type").equals("category")) {
      if (request.getParameter("id") != null && !request.getParameter("id").trim().equals("")) {
        int id = Integer.parseInt(request.getParameter("id"));
        CategoryDAO.Delete(id);
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
  else if(request.getParameter("namecategory")!=null){
    String name = request.getParameter("namecategory");
    if(!name.trim().equals("")){
      Category category = new Category();
      category.setM_Name(name);
      CategoryDAO.Insert(category);
    }
  }
  response.sendRedirect("dashboard.jsp");
%>
</body>
</html>
