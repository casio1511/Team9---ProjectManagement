<%@ page import="com.mypackage.Cart" %>
<%@ page import="com.mypackage.ProductDAO" %>
<%@ page import="com.mypackage.ProductJSPGUI" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
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
        <a href="index.html">N-AIR</a>
      </div>
      <div class="login-bars">
        <a class="btn btn-default log-bar" href="register.html" role="button">Sign up</a>
        <a class="btn btn-default log-bar" href="signup.html" role="button">Login</a>
        <div class="cart box_1">
          <a href="checkout.html">
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
                        <li><a href="products.html"a>Yoga Pants</a></li>
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
      <a class="continue" href="product.jsp">Continue to buy others</a>
      <div class="price-details">
        <h3>Price Details</h3>
        <span>Total</span>

        <%
          ProductDAO product= new ProductDAO();
          double sum=0;
          ArrayList<Cart> cart= (ArrayList<Cart>)session.getAttribute("cart");
          NumberFormat nf= NumberFormat.getInstance();
          nf.setMinimumIntegerDigits(0);

          String sku = "";// de mo phong cai
          if (request.getParameter("ma_san_pham") != null) {
          }
        %>
        <%
          if (cart != null) {
            for (Cart c : cart){
              sum = sum+ (c.getM_quantity() * product.getByID(c.getM_product().getM_ID()).getM_Price());
        %>
        <div class="product">

          <div class='img-responsive'>
            <img
                    src="images/image_project/<%=product.getByID(c.getM_product().getM_ID()).getM_Image()%>">
          </div>
          <form action="checkout_do.jsp" method="post">
            <form action="UpdateCart.jsp"?action=delete&&ID=<%=c.getM_product().getM_ID()%>>
              <div class="product-details">
                <div class="product-title">
                  <input style="border: hidden" name="tensanpham" value="<%=product.getByID(c.getM_product().getM_ID()).getM_Name()%>">
                </div>
              </div>
              <div class="product-price">
                <li>Price : <input style="border: hidden" name="price" value="<%=nf.format(product.getByID(c.getM_product().getM_ID()).getM_Price())%>"></li>
              </div>
              <div class="product-quantity">
                <li>Quantity : <input style='border:hidden' value="<%=c.getM_quantity()%>"  name="quantity"></li>
              </div>


              <div class="product-line-price"><input style="border: hidden" name="sum" value=" <%=nf.format((product.getByID(c.getM_product().getM_ID()).getM_Price()) * c.getM_quantity())%>"><a style="font-size: smaller">VNĐ</a>
                <form action="UpdateCart.jsp?action=delete&&ID=<%=c.getM_product().getM_ID()%>"><input type="submit" onclick="alert('Đã đặt mua <%=product.getByID(c.getM_product().getM_ID()).getM_Name()%>')"
                                                                                                       value="Checkout" ></form>
              </div>

              <a href='UpdateCart.jsp?action=delete&&ID=<%=c.getM_product().getM_ID()%>'>Delete</a>
            </form>
          </form>
        </div>

        <%
            }
          }
        %>
        <div class="product-quantity">
          <li>TOTAL : <input style='border:hidden' value="<%=sum%>"  name="total"></li>
        </div>


        </form>
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
