<%@ page import="com.mypackage.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.mypackage.ProductJSPGUI" %>
<%@ page import="com.mypackage.Sport" %>
<%@ page import="com.mypackage.SportDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 10/06/2016
  Time: 12:00 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Checkout</title>
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
        <%if(session.getAttribute("username") == null){%>
        <a class="btn btn-default log-bar" href="register.jsp" role="button">Sign up</a>
        <a class="btn btn-default log-bar" href="signup.jsp" role="button">Login</a>
        <%}else {%>
        <a class="btn btn-default log-bar" href="information.jsp" role="button">My Information</a>
        <a class="btn btn-default log-bar" href="logout" role="button">Logout</a>
        <%}%>
        <div class="cart box_1">
          <a href="checkout.jsp">
            <%
              int total1 = 0;
              session = request.getSession();
              synchronized (session){
                if(session.getAttribute("total") != null)
                  total1 = (Integer) session.getAttribute("total");
              }
            %>
            <h3>
              <div class="total">
                <span><%=total1%> item(s)</span></div></h3>
          </a>
          <p><a href='CartController?action=1' class="simpleCart_empty">Empty Cart</a></p>
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
          <div class="clearfix"></div>
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
              <div class="clearfix"></div>
            </ul>

            <div class="clearfix"></div>

          </div>

          <!--/.navbar-collapse-->
          <div class="clearfix" align="right">
            <form class="col-lg-8" method="post" action="finding.jsp">
              <input type="text" name="search" class="sub-email" value="Keyword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword';}">
              <input type="submit" class="submit" value="submit">
            </form></div>

        </nav>

        <!--/.navbar-->
        <div class="clearfix"></div>
      </div>
      <!--/.content--->
    </div>
    <!--header-bottom-->
  </div>
</div>
<div class="head-bread">
  <div class="container">
    <ol class="breadcrumb">
      <li><a href="index.jsp">Home</a></li>
      <li><a href="product.jsp">Products</a></li>
      <li><a href="checkout.jsp">Cart</a></li>
      <li class="active">CONFIRM</li>
    </ol>
  </div>
</div>
<!-- check-out -->
<div class="check">
  <div class="container">
    <div class="col-md-3 cart-total">
      <a class="continue" href="product.jsp">Continue to buy others</a>
      <div class="price-details">
        <h3>Price Details</h3>
        <span>Total</span>
        <%
          double total_price = 0;
          int total = 0;
          List<Cart> cart = new ArrayList<Cart>();
          if (session.getAttribute("cart") == null && session.getAttribute("total") == null)
            response.sendRedirect("product.jsp");
          else if(session.getAttribute("cart") != null)
            cart = (ArrayList<Cart>)session.getAttribute("cart");
          for(Cart item: cart){
            total_price = item.getM_product().getM_Price() * item.getM_quantity();
          }
          if(session.getAttribute("total") != null)
            total = (int)session.getAttribute("total");
          NumberFormat nf = NumberFormat.getInstance();
          nf.setMinimumIntegerDigits(0);
        %>
        <span class="total1"><%=nf.format(total_price)%></span>
        <span>Discount</span>
        <span class="total1">0%</span>
        <span>Delivery Charges</span>
        <span class="total1">0</span>
        <div class="clearfix"></div>
      </div>
      <hr class="featurette-divider">
      <ul class="total_price">
        <li class="last_price"> <h4>TOTAL</h4></li>
        <li class="last_price"><span><%=nf.format(total_price)%></span></li>
        <div class="clearfix"> </div>
      </ul>
      <div class="clearfix"></div>
      <a class="order" href="confirm.jsp">Check Out</a>
    </div>
    <div class="col-md-9 cart-items">
      <h1>My Shopping Bag (<%=total%>)</h1>
            <%=ProductJSPGUI.checkOut(cart)%>
        </div>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
</div>
<div class="footer-grid">
  <div class="container">
    <div class="col-md-2 re-ft-grd">
      <h3>Categories</h3>
      <ul class="categories">
        <li><a href="#">Men</a></li>
        <li><a href="#">Women</a></li>
        <li><a href="#">Kids</a></li>
        <li><a href="#">Sports</a></li>
      </ul>
    </div>
    <div class="col-md-2 re-ft-grd">
      <h3>Short links</h3>
      <ul class="shot-links">
        <li><a href="#">Contact us</a></li>


        <li><a href="contact.html">Sitemap</a></li>
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
          <a href="index.html" class="ft-log">N-AIR</a>
        </div>
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
  <div class="copy-rt">
    <div class="container">
      <p>&copy;   2016 N-AIR All Rights Reserved. Design by Group 9 - Project Manager - University of Science
      <p>   Group member: <a href="#">Phương Trân - Minh Quân - Đức Vinh</a></p>
    </div>
  </div>
</div>
</body>
</html>
