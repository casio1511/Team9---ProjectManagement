<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.*" %>
<%@ page import="java.text.NumberFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 29/06/2016
  Time: 2:13 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
  <title>Bill Detail</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <!-- Custom Theme files -->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
  <!--js-->
  <script src="js/jquery-2.1.1.min.js"></script>
  <!--icons-css-->
  <link href="css/font-awesome.css" rel="stylesheet">
  <!--Google Fonts-->
  <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
  <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
  <!--//skycons-icons-->
</head>
<body>
<div class="page-container">
  <div class="left-content">
    <div class="mother-grid-inner">
      <!--header start here-->
      <div class="header-main">
        <div class="header-left">
          <div class="logo-name">
            <a href="dashboard.jsp"> <h1>Shoes Store</h1>
              <!--<img id="logo" src="" alt="Logo"/>-->
            </a>
          </div>

          <div class="clearfix"> </div>
        </div>
        <div class="header-right">
          <div class="profile_details_left"><!--notifications of menu start -->
            <div class="clearfix"> </div>
          </div>
          <!--notification menu end -->
          <div class="profile_details">
            <ul>
              <li class="dropdown profile_details_drop">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <div class="profile_img">
                    <div class="user-name">
                      <p>Admin</p>
                      <span>Administrator</span>
                    </div>
                    <i class="fa fa-angle-down lnr"></i>
                    <i class="fa fa-angle-up lnr"></i>
                    <div class="clearfix"></div>
                  </div>
                </a>
                <ul class="dropdown-menu drp-mnu">
                  <li> <a href="../index.jsp"><i class="fa fa-user"></i>Back to index</a> </li>
                  <li> <a href="../logout"><i class="fa fa-sign-out"></i> Logout</a> </li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
      </div>
      <!--heder end here-->
      <!-- script-for sticky-nav -->
      <script>
        $(document).ready(function() {
          var navoffeset=$(".header-main").offset().top;
          $(window).scroll(function(){
            var scrollpos=$(window).scrollTop();
            if(scrollpos >=navoffeset){
              $(".header-main").addClass("fixed");
            }else{
              $(".header-main").removeClass("fixed");
            }
          });

        });
      </script>
      <!-- /script-for sticky-nav -->
      <!--inner block start here-->
      <div class="inner-block">
        <div class="typography">
          <!--button-->
          <!--buttons-->      <!--//button-->
          <!--alerts-->      <!--//alerts-->
          <!--Progress bars-->

          <!--//Progress bars-->
          <!--well-->

          <!--well-->
          <!--bagets-->

          <div class="typo-badges">
            <div class="appearance">
              <h3 class="ghj">Bill Management</h3>
            </div>

            <div class="clearfix"> </div>
            <!--bagets-->
            <%
              if(session.getAttribute("username") == null || (int)session.getAttribute("role") == 0)
                response.sendRedirect("information.jsp");
              else{
                Role role = RoleDAO.getByID((int)session.getAttribute("role"));
                if(role.getM_Bill() == 0)
                  response.sendRedirect("dashboard.jsp");
              }
              if(request.getParameter("id") == null || request.getParameter("id").equals(""))
                response.sendRedirect("bill.jsp");
              int id = Integer.parseInt(request.getParameter("id"));
              Bill bill = BillDAO.getByID(id);
            %>
              <%=BillDetailJSPGUI.DetailBillAdmin(bill)%>
          </div>
        </div>
      </div>
      <!--inner block end here-->
      <!--copy rights start here-->
      <div class="copyrights">
        <p>© 2016 Shoppy. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
      </div>
      <!--COPY rights end here-->
    </div>
  </div>
  <!--slider menu-->
  <div class="sidebar-menu">
    <div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span>
      <!--<img id="logo" src="" alt="Logo"/>-->
    </a> </div>
    <div class="menu">
      <ul id="menu" >
        <li id="menu-home" ><a href="dashboard.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
        <li><a href="#"><i class="fa fa-shopping-cart"></i><span>E-Commerce</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-academico-sub" >
            <li id="menu-academico-avaliacoes" ><a href="product_detail.jsp">Product</a></li>
            <li id="menu-academico-boletim" ><a href="user.jsp">User</a></li>
            <li id="menu-academico-boletim" ><a href="bill.jsp">Bill</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
<script>
  var toggle = true;

  $(".sidebar-icon").click(function() {
    if (toggle)
    {
      $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
      $("#menu span").css({"position":"absolute"});
    }
    else
    {
      $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
      setTimeout(function() {
        $("#menu span").css({"position":"relative"});
      }, 400);
    }
    toggle = !toggle;
  });
</script>
<!--scrolling js-->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!--//scrolling js-->
<script src="js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>
