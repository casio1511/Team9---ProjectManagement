<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.*" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Index</title>
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
              <li><a href="advanced_search.jsp">Search</a></li>
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
<div class="header-end">
  <div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="./images/shoe3.jpg" alt="...">
          <div class="carousel-caption car-re-posn">
            <h3>AirMax</h3>
            <h4>You feel to fall</h4>
            <span class="color-bar"></span>
          </div>
        </div>
        <div class="item">
          <img src="./images/shoe1.jpg" alt="...">
          <div class="carousel-caption car-re-posn">
            <h3>AirMax</h3>
            <h4>You feel to fall</h4>
            <span class="color-bar"></span>
          </div>
        </div>
        <div class="item">
          <img src="./images/shoe2.jpg" alt="...">
          <div class="carousel-caption car-re-posn">
            <h3>AirMax</h3>
            <h4>You feel to fall</h4>
            <span class="color-bar"></span>
          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left car-icn" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right car-icn" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<div class="feel-fall">
  <div class="container">
    <div class="pull-left fal-box">
      <div class=" fall-left">
        <h3>Fall</h3>
        <img src="images/f-l.png" alt="/" class="img-responsive fl-img-wid">
        <p>Inspiration and innovation<br> for every athlete in the world</p>
        <span class="fel-fal-bar"></span>
      </div>
    </div>
    <div class="pull-right fel-box">
      <div class="feel-right">
        <h3>Feel</h3>
        <img src="images/f-r.png" alt="/" class="img-responsive fl-img-wid">
        <p>Inspiration and innovation<br> for every athlete in the world</p>
        <span class="fel-fal-bar2"></span>
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<div class="shop-grid">
  <div class="container">
    <%=ProductJSPGUI.showIndex(ProductDAO.getAll())%>
    <div class="clearfix"></div>
  </div>
</div>
<div class="sub-news">
  <div class="container">
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
      <p>   Group member: <a href="#">Phương Trân - Minh Quân - Đức Vinh</a></p>
    </div>
  </div>
</div>
</body>
</html>