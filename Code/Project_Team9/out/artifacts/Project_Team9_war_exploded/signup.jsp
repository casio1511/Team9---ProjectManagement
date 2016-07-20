<%@ page import="com.mypackage.Sport" %>
<%@ page import="com.mypackage.SportDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.Category" %>
<%@ page import="com.mypackage.CategoryDAO" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
  <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  <meta charset utf="8">
  <!--fonts-->
  <link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>

  <!--fonts-->
  <!--bootstrap-->
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <!--coustom css-->
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
  <!--shop-kart-js-->
  <script src="js/simpleCart.min.js"></script>
  <!--default-js-->
  <script src="js/jquery-2.1.4.min.js"></script>
  <!--bootstrap-js-->
  <script src="js/bootstrap.min.js"></script>
  <!--script-->
  <!-- FlexSlider -->
  <script src="js/imagezoom.js"></script>
  <script defer src="js/jquery.flexslider.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

  <script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
      $('.flexslider').flexslider({
        animation: "slide",
        controlNav: "thumbnails"
      });
    });
  </script>
  <!-- //FlexSlider-->
</head>
<body>
<div class="header">
  <div class="container">
    <div class="header-top">
      <div class="logo">
        <a href="index.jsp">N-AIR</a>
      </div>
      <div class="login-bars">
        <a class="btn btn-default log-bar" href="register.jsp" role="button">Sign up</a>
        <a class="btn btn-default log-bar" href="signup.jsp" role="button">Login</a>
        <div class="cart box_1">
          <a href="checkout.jsp">
            <h3>
              <div class="total">
                <span class="simpleCart_total"></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div></h3>
          </a>
          <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
          <div class="clearfix"> </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
    <!---menu-----bar--->
    <div class="header-botom">
      <div class="content white">
        <nav class="navbar navbar-default nav-menu" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <!--/.navbar-header-->

          <div class="collapse navbar-collapse collapse-pdng" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav nav-font">
              <li><a href="index.jsp">Home</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shoes<b class="caret"></b></a>
                <ul class="dropdown-menu multi-column columns-3">
                  <div class="row">
                    <div class="col-sm-4 menu-img-pad">
                      <ul class="multi-column-dropdown">
                        <%List<Sport> list_header = SportDAO.getAll();
                          for(Sport sport : list_header){%>
                        <li><a href="product.jsp?sport=<%=sport.getM_ID()%>"><%=sport.getM_Name()%></a></li>
                        <%}%>
                      </ul>
                    </div>
                    <div class="col-sm-4 menu-img-pad">
                      <a href="#"><img src="images/menu1.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                    </div>
                    <div class="col-sm-4 menu-img-pad">
                      <a href="#"><img src="images/menu2.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                    </div>
                  </div>
                </ul>
              </li>
              <li><a href="contact.jsp">Catch</a></li>
              <li><a href="aboutus.jsp">About Us</a></li>
              <li><a href="advanced_search.jsp">Search</a></li>
              <div class="clearfix"></div>
            </ul>

            <div class="clearfix"></div>

          </div>
          <!--/.navbar-collapse-->
          <div class="clearfix"></div>
        </nav>
        <!--/.navbar-->
        <div class="clearfix"></div>
      </div>
      <!--/.content--->
    </div>
    <!--header-bottom-->
  </div>
</div>
<%if(session.getAttribute("username") != null){response.sendRedirect("information.jsp");}%>
<div class="head-bread">
  <div class="container">
    <ol class="breadcrumb">
      <li><a href="index.jsp">HOME</a></li>
      <li class="active">LOGIN</li>
    </ol>
  </div>
</div>
<!--signup-->
<!-- login-page -->
<div class="login">
  <div class="container">
    <div class="login-grids">
      <div class="col-md-6 log">
        <h3>Login</h3>
        <div class="strip"></div>
        <script src='../js/jquery.timeblock.js'></script>
        <%
          int count = 0;
          if(session.getAttribute("count") != null) {
            count = (int) session.getAttribute("count");
          }
          if(count < 3 && session.getAttribute("mess")==null){%>
        <p>Welcome, please enter the following to continue.<br></p>
        <%}
          else if(session.getAttribute("mess") != null && count < 3 ){
            String mess = (String)session.getAttribute("mess");
        %>
        <p style="color: red;"><%=mess%></p>
        <%}
          if(count == 3){
            HttpSession httpSession = request.getSession();
            if (httpSession.getAttribute("lasAccessedTime") == null) {
              long lasAccessedTime = session.getLastAccessedTime();
              httpSession.setAttribute("lasAccessedTime", lasAccessedTime);
            }
            //out.println("");
            long last = (Long) httpSession.getAttribute("lasAccessedTime");
            Date date = new Date();
            long currTime = date.getTime();
            long remainTime = currTime - last;
            long totaltimeremain = 300000 - remainTime;
            Date totaltimeremaindate = new Date(totaltimeremain);
            out.println("<span id='timeremain' hidden='hidden'>" + totaltimeremain / 1000 + "</span>");
            out.println("<p style='color: red;'><b>Your account will be unblocked in <span id='time'><b>" + new SimpleDateFormat("mm:ss").format(totaltimeremaindate) + "</b></span> minutes</b></p>");
        %>
        <img src="images/block_account.jpg" width="550px" height="300px" align="left">
        <%
          if (remainTime >= 60000) {
            httpSession.removeAttribute("count");
            httpSession.removeAttribute("mess");
            httpSession.removeAttribute("lasAccessedTime");
            response.sendRedirect("signup.jsp");
          }
        }
        else if(count < 3){%>
        <form method="post" action="logincontroller">
          <h5>User Name:</h5>
          <input type="text" value="" name="username">
          <h5>Password:</h5>
          <input type="password" value="" name="password"><br>
          <input type="submit" value="Login">
        </form>
        <a href="#">Forgot Password ?</a>
        <%}%>
      </div> <!-- note--> <!--paste vo-->
      <div class="col-md-6 login-right">
        <h3>New Registration</h3>
        <div class="strip"></div>
        <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
        <a href="register.jsp" class="button">Create An Account</a>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<!-- //login-page -->
<!--signup-->
<div class="footer-grid">
  <div class="container">
    <div class="col-md-2 re-ft-grd">
      <h3>Categories</h3>
      <ul class="categories">
        <%List<Category> list_category = CategoryDAO.getAll();
          for(Category category : list_category){%>
        <li><a href="product.jsp?sport=<%=category.getM_ID()%>"><%=category.getM_Name()%></a></li>
        <%}%>
      </ul>
    </div>
    <div class="col-md-2 re-ft-grd">
      <h3>Short links</h3>
      <ul class="shot-links">
        <li><a href="contact.jsp">Contact us</a></li>
        <li><a href="contact.jsp">Sitemap</a></li>
      </ul>
    </div>
    <div class="col-md-6 re-ft-grd">
      <h3>Social</h3>
      <ul class="social">
        <li><a href="#" class="fb">facebook</a></li>
        <li></li>
        <li></li>
        <div class="clearfix"></div>
      </ul>
    </div>
    <div class="col-md-2 re-ft-grd">
      <div class="bt-logo">
        <div class="logo">
          <a href="index.jsp" class="ft-log">N-AIR</a>
        </div>
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
  <div class="copy-rt">
    <div class="container">
      <p>&copy;   2016 N-AIR All Rights Reserved. Design by Group 9 - Project Manager - University of Science
      <p>   Group member: <a href="#">Phuong Tran - Minh Quan - Duc Vinh</a></p>
    </div>
  </div>
</div>
</body>
</html>