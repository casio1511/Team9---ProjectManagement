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
        <a class="btn btn-default log-bar" href="transaction.jsp" role="button">My Transaction</a>
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
                        <li><a href="product.jsp">All</a></li>
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
              <input type="submit" class="submit" value="Search">
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
      <li class="active">Single</li>
    </ol>
  </div>
</div>
<div class="showcase-grid">
  <div class="container">
    <div class="col-md-8 showcase">
      <%
        int id = 0;
        String id_request = request.getParameter("id");
        int flag = 0;
        if(id_request != null && !id_request.isEmpty()) {
          flag = 1;
          for (char c : id_request.toCharArray())
            if (!Character.isDigit(c))
              flag = 0;
          if(flag == 1)
            id = Integer.parseInt(id_request);
        }
        if(flag == 0){
          response.sendRedirect("product.jsp");
        }
        Product product = ProductDAO.getByID(id);
        if(product.getM_Name() == null) {%>
          <div class="flexslider">
            <div class="showcase-rt-top">
              <div class="pull-left shoe-name">
                <img src="images/not_available.jpg">
              </div>
              <div class="clearfix"></div>
            </div>
        <%}else{
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
              <%List<Product> list = ProductDAO.getSizeOfProduct(product);%>
              <form action="CartController" method="post" >
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
  <script type="text/javascript" src="js/jquery-latest.min.js"></script>
  <script type="text/javascript">
    function CheckSpace(value) {
      if(value.trim() == "")
        return true;
      else
        return false;
    }

    function CheckMessage () {
      message=document.getElementById("message").value;
      if(CheckSpace(message)==true){
        return false;//rong
      }
      else{
        return true;
      }
    }
    function CheckInput() {
      if(CheckMessage() == true){
        return true;
      }
      else {
        return false;
      }
    }
  </script>
<div class="specifications">
  <div class="container">

    <div class="detai-tabs">
      <!-- Nav tabs -->
      <ul class="nav nav-pills tab-nike" role="tablist">
        <li role="presentation" class="active"><a href="#comment" aria-controls="comment" role="tab" data-toggle="tab">Comment Box</a></li>
        <li role="presentation"><a href="#show" aria-controls="show" role="tab" data-toggle="tab">Comment (<%=CommentDAO.countCommentByID(id)%>)</a></li>
        </ul>
      <div class="tab-content">
          <%
            if(session.getAttribute("username") != null){
              Account account = AccountDAO.getUserByUsername((String)session.getAttribute("username"));
          %>
        <div role="tabpanel" class="tab-pane active" id="comment">
      <form method="post" action="CommentController" onsubmit='return CheckInput()'>
        <input type="hidden" name="name" id="name" value="<%=account.getM_Username()%>" required><br>
        <input type="hidden" name="email" id="email" value="<%=account.getM_Email()%>"><br>
        <div class="clear"> </div>
        <div>
          <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Message ';}" name="message" id="message" required></textarea><br>
        </div>
        <input type="hidden" value="<%=id%>" name="id">
        <div class="submit">
          <input class="btn btn-default cont-btn" type="submit" value="SEND " />
        </div>
      </form>
        </div>
          <%} else{%>
        <div role="tabpanel" class="tab-pane active" id="comment"></div>
        <%}
          List<Comment> list_comment = CommentDAO.getByID(id);%>
        <div role="tabpanel" class="tab-pane" id="show">
          <%=CommentJSPGUI.showCommentByID(list_comment)%>
    </div>
  </div>
</div>
    <%}%>
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
