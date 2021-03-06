<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mypackage.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 08/06/2016
  Time: 10:07 CH
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
  <title>Single</title>
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
              int total = 0;
              session = request.getSession();
              synchronized (session){
                if(session.getAttribute("total") != null)
                  total = (Integer) session.getAttribute("total");
              }
            %>
            <h3>
              <div class="total">
                <span><%=total%> item(s)</span></div></h3>
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
<%if(request.getParameter("id") == null)
    response.sendRedirect("product.jsp");%>
<div class="head-bread">
  <div class="container">
    <ol class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li><a href="#">Products</a></li>
      <li class="active">Single</li>
    </ol>
  </div>
</div>
<div class="showcase-grid">
  <div class="container">
    <div class="col-md-8 showcase">
      <%
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = ProductDAO.getByID(id);
        if(product.getM_Name() == null) {
          response.sendRedirect("product.jsp");
        }
      ProductDAO.addView(product.getM_View(), product.getM_ID());%>
      <div class="flexslider">
        <ul class="slides">
          <li data-thumb="images/image_project/<%=product.getM_Image()%>">
            <div class="thumb-image"> <img src="images/image_project/<%=product.getM_Image()%>" data-imagezoom="true" class="img-responsive"> </div>
          </li>
          <li data-thumb="images/image_project/<%=product.getM_Image()%>">
            <div class="thumb-image"> <img src="images/image_project/<%=product.getM_Image()%>" data-imagezoom="true" class="img-responsive"> </div>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
    </div>
    <%
      NumberFormat nf = NumberFormat.getInstance();
      nf.setMinimumIntegerDigits(0);
    %>
    <div class="col-md-4 showcase">
      <div class="showcase-rt-top">
        <div class="pull-left shoe-name">
          <h3><%=product.getM_Name()%></h3>
          <h3>Price: <%=nf.format(product.getM_Price())%> dong</h3>
          <p><h4>View: <%=product.getM_View()%></h4></p>
        </div>

        <div class="clearfix"></div>
      </div>
      <hr class="featurette-divider">
      <div class="shocase-rt-bot">
        <div class="float-qty-chart">
          <ul>
            <li class="qty">
              <h3>Size Chart</h3>
              <form action="CartController" method="post" >
              <%List<Product> list = ProductDAO.getSizeOfProduct(product);%>
              <select class="form-control siz-chrt" name="size">
                <%for(Product product1 : list){%>
                <option value="<%=product1.getM_Size()%>"><%=product1.getM_Size()%></option>
                <%}%>
              </select>
                <input type="hidden" name="name" value="<%=product.getM_Name()%>">
                <input type="hidden" name="color" value="<%=product.getM_Color()%>">
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <ul>
          <li class="ad-2-crt simpleCart_shelfItem">
            <%if(session.getAttribute("username") != null){%>
            <input type="submit" class="submit" value="Add To Cart">
            <%}%>
          </li>
        </ul>
        </form>
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
</div>

<div class="you-might-like">
  <div class="container">
    <h3 class="you-might">Products You May Like</h3>
    <%if(ProductDAO.checkProductSameCategory(product.getM_Category(), product.getM_Name()) == true){%>
      <%=ProductJSPGUI.showRelatedProduct(ProductDAO.getProductOfCategory(product.getM_Category()))%>
    <%}%>
    <div class="clearfix"></div>
  </div>
</div>
<div class="specifications">
  <div class="container">
    <h3>Comments</h3>
    <div class="detai-tabs">
      <!-- Nav tabs -->
      <div><b><%=CommentDAO.countCommentByID(id)%> comment(s)</b></div>

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
      <form method="post" action="CommentController">
        <input type="text" class="textbox" value=" Your Name" name="name" required><br>
        <input type="text" class="textbox" value="Your E-Mail" name="email" required><br>
        <div class="clear"> </div>
        <div>
          <textarea value="Message:" name="message" required>Your Message</textarea><br>
        </div>
        <input type="hidden" value="<%=id%>" name="id">
        <div class="submit">
          <input class="btn btn-default cont-btn" type="submit" value="SEND " />
        </div>
      </form>
      <%List<Comment> list_comment = CommentDAO.getByID(id);%>
      <%=CommentJSPGUI.showCommentByID(list_comment)%>
    </div>
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
