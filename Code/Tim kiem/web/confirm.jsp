<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 15/06/2016
  Time: 2:40 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mypackage.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.mypackage.ProductJSPGUI" %>
<%@ page import="java.nio.channels.AcceptPendingException" %>
<%@ page import="com.mypackage.Account" %>
<%@ page import="com.mypackage.AccountDAO" %>
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
  <title>Confirm Checkout</title>
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
        <a href="index.html">N-AIR</a>
      </div>
      <div class="login-bars">
        <a class="btn btn-default log-bar" href="register.html" role="button">Sign up</a>
        <a class="btn btn-default log-bar" href="signup.html" role="button">Login</a>
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
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="products.html">Shoes</a></li>
                  <li><a href="products.html">Tees</a></li>
                  <li><a href="products.html">Tops</a></li>
                  <li class="divider"></li>
                  <li><a href="products.html">Tracks</a></li>
                  <li class="divider"></li>
                  <li><a href="products.html">Gear</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men<b class="caret"></b></a>
                <ul class="dropdown-menu multi-column columns-3">
                  <div class="row">
                    <div class="col-sm-4 menu-img-pad">
                      <ul class="multi-column-dropdown">
                        <li><a href="products.html">Joggers</a></li>
                        <li><a href="products.html">Foot Ball</a></li>
                        <li><a href="products.html">Cricket</a></li>
                        <li class="divider"></li>
                        <li><a href="products.html">Tennis</a></li>
                        <li class="divider"></li>
                        <li><a href="products.html">Casual</a></li>
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
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
                <ul class="dropdown-menu multi-column columns-2">
                  <div class="row">
                    <div class="col-sm-6">
                      <ul class="multi-column-dropdown">
                        <li><a href="products.html">Tops</a></li>
                        <li><a href="products.html">Bottoms</a></li>
                        <li><a href="products.html">Yoga Pants</a></li>
                        <li class="divider"></li>
                        <li><a href="products.html">Sports</a></li>
                        <li class="divider"></li>
                        <li><a href="products.html">Gym</a></li>
                      </ul>
                    </div>
                    <div class="col-sm-6">
                      <a href="#"><img src="images/menu3.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                    </div>
                  </div>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">kids<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="products.html">Tees</a></li>
                  <li><a href="products.html">Shorts</a></li>
                  <li><a href="products.html">Gear</a></li>
                  <li class="divider"></li>
                  <li><a href="products.html">Watches</a></li>
                  <li class="divider"></li>
                  <li><a href="products.html">Shoes</a></li>
                </ul>
              </li>
              <li><a href="contact.html">Catch</a></li>
              <div class="clearfix"></div>
            </ul>
            <div class="clearfix"></div>
          </div>
          <!--/.navbar-collapse-->

          <div class="clearfix" align="right">
            <form class="col-lg-8">
              <input type="text" class="sub-email" value="Keyword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword';}">
              <a class="btn btn-default subs-btn" href="#" role="button">Search</a>
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
      <li><a href="index.html">Home</a></li>
      <li><a href="products.hml">Products</a></li>
      <li class="active">CART</li>
    </ol>
  </div>
</div>
<!-- check-out -->
<div class="check">
  <div class="container">
    <div class="col-md-3 cart-total">
      <a class="continue" href="checkout.jsp">Go Back to Your Cart</a>
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
    <script>
      function CheckSpace(value) {
        if(value.trim() == "")
          return true;
        else
          return false;
      }

      //kiểm tra điện thoại
      function CheckName () {
        name=document.getElementById("name").value;
        if(CheckSpace(name)==true)
        {
          document.getElementById("checkname").innerHTML="Input your name";
          return false;//rong
        }
        else
        {
          document.getElementById("checkname").innerHTML="";
          return true;
        }
      }

      function CheckAddress () {
        address=document.getElementById("address").value;
        if(CheckSpace(address)==true){
          document.getElementById("checkaddress").innerHTML="Input your address";
          return false;//rong
        }
        else{
          document.getElementById("checkaddress").innerHTML="";
          return true;
        }
      }

      function CheckPhone () {
        phone=document.getElementById("phone").value;
        if(isNaN(phone) == true|| CheckSpace(phone)==true){
          document.getElementById("checkphone").innerHTML="Input your phone number!";
          return false;//ko là số
        } else if(phone.length < 10 || phone.length > 11){
          document.getElementById("checkphone").innerHTML="Your phone number must be longer than <b>9</b> numbers and shorter than <b>12</b> numbers!";
          return false;//ko là số
        }
        else{
          document.getElementById("checkphone").innerHTML="";
          return true;//là số
        }
      }

      function CheckInput() {
        if(chekusername === true && checkemail == true && CheckPhone() == true && CheckName() ==true && CheckPass() == true && CheckAddress() == true){
          return true;
        }
        else {
          alert("Your information is not correct");
          return false;
        }
      }
    </script>
    <%
      String username = (String)session.getAttribute("username");
      Account account = AccountDAO.getUserByUsername(username);
    %>
    <div class="col-md-9 cart-items">
      <h1>Confirm your information</h1>
      <div class="reg-form">
          <div class="reg">
            <form onsubmit='return CheckInput()' action="registercontroller" method="post">
              <ul>
                <li class="text-info">Full Name: </li>
                <li><input type="text" id="name" name="name" onchange="CheckName()" value="<%=account.getM_Name()%>"></li>
                <li><span class="checkname" id="checkname" style="color:red"></span></li>
              </ul>
              <ul>
                <li class="text-info">Address:</li>
                <li><input type="text" id="address" name="address" onchange="CheckAddress()" value="<%=account.getM_Address()%>"></li>
                <li><span id="checkaddress" style="color:red"></span></li>
              </ul>
              <ul>
                <li class="text-info">Mobile Number:</li>
                <li><input type="text" id="phone" name="phone" onchange="CheckPhone()" value="<%=account.getM_Phone()%>"></li>
                <li><span id="checkphone" style="color:red"></span></li>
              </ul>
              <input type="submit" value="Check Out Now">
            </form>
          </div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"> </div>

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

