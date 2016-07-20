<%@ page import="com.mypackage.*" %>
<%@ page import="java.util.List" %>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
  <title>Dashboard</title>
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
  <!--static chart-->
  <script src="js/Chart.min.js"></script>
  <!--//charts-->
  <!-- geo chart -->
  <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
  <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
  <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
  <!-- Chartinator  -->
  <script src="js/chartinator.js" ></script>
  <script type="text/javascript">
    jQuery(function ($) {

      var chart3 = $('#geoChart').chartinator({
        tableSel: '.geoChart',

        columns: [{role: 'tooltip', type: 'string'}],

        colIndexes: [2],

        rows: [
          ['China - 2015'],
          ['Colombia - 2015'],
          ['France - 2015'],
          ['Italy - 2015'],
          ['Japan - 2015'],
          ['Kazakhstan - 2015'],
          ['Mexico - 2015'],
          ['Poland - 2015'],
          ['Russia - 2015'],
          ['Spain - 2015'],
          ['Tanzania - 2015'],
          ['Turkey - 2015']],

        ignoreCol: [2],

        chartType: 'GeoChart',

        chartAspectRatio: 1.5,

        chartZoom: 1.75,

        chartOffset: [-12,0],

        chartOptions: {

          width: null,

          backgroundColor: '#fff',

          datalessRegionColor: '#F5F5F5',

          region: 'world',

          resolution: 'countries',

          legend: 'none',

          colorAxis: {

            colors: ['#679CCA', '#337AB7']
          },
          tooltip: {

            trigger: 'focus',

            isHtml: true
          }
        }


      });
    });
  </script>
  <!--geo chart-->

  <!--skycons-icons-->
  <script src="js/skycons.js"></script>
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
        <!--market updates updates-->
        <div class="market-updates">

          <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-2">
              <div class="col-md-8 market-update-left">
                <h3><%=(AccountDAO.countAll()-1)%></h3>
                <h4>Registered User</h4>
                <a href="user.jsp"><p>Details</p></a>
              </div>
              <div class="col-md-4 market-update-right">
                <i class="fa fa-eye"> </i>
              </div>
              <div class="clearfix"> </div>
            </div>
          </div>
<%
if(session.getAttribute("username") == null)
  response.sendRedirect("../signup.jsp");
  else{
  if((int)session.getAttribute("role")==0)
    response.sendRedirect("../information.jsp");
}
%>
          <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-1">
              <div class="col-md-8 market-update-left">
                <h3><%=ProductDAO.countGetAll()%></h3>
                <h4>Products</h4>
                <a href="product_detail.jsp"><p>Details</p></a>
              </div>
              <div class="col-md-4 market-update-right">
                <i class="fa fa-file-text-o"> </i>
              </div>
              <div class="clearfix"> </div>
            </div>
          </div>

          <div class="col-md-4 market-update-gd">
            <div class="market-update-block clr-block-3">
              <div class="col-md-8 market-update-left">
                <h3><%=BillDAO.countGetAll()%></h3>
                <h4>Bills</h4>
                <a href="bill.jsp"><p>Details</p></a>
              </div>
              <div class="col-md-4 market-update-right">
                <i class="fa fa-envelope-o"> </i>
              </div>
              <div class="clearfix"> </div>
            </div>
          </div>
          <div class="clearfix"> </div>
        </div>
        <!--market updates end here-->
        <!--mainpage chit-chating-->
        <div class="chit-chat-layer1">
          <div class="col-md-6 chit-chat-layer1-left">
            <script>

              function checkSpecialCharacter(text) {
                var splChars = "*|,\":<>[]{}`\';()@&$#%";
                for (var i = 0; i < text.length; i++)
                  if (splChars.indexOf(text.charAt(i)) != -1)
                    return false;
                  return true;
              }

                function isNumeric(n) {
                  var flag = 1;
                  for (var i = 0; i < n.length; i++)
                    if (!isNaN(n.charAt(i)) && isFinite(n.charAt(i)))
                      return true;
                  return false;
                }

                function checkNameSport() {
                  name = document.getElementById("namesport").value;
                  if (isNumeric(name) == true || checkSpecialCharacter(name)==false) {
                    alert("Please just input character, do not input number or special character");
                    return false;
                  }
                  return true;
                }

                function checkSubmitSport() {
                  return checkNameSport();
                }

              function checkNameGender() {
                name = document.getElementById("namegender").value;
                if (isNumeric(name) == true || checkSpecialCharacter(name)==false) {
                  alert("Please just input character, do not input number or special character");
                  return false;
                }
                return true;
              }

              function checkSubmitGender() {
                return checkNameGender();
              }

              function checkNameColor() {
                name = document.getElementById("namecolor").value;
                if (isNumeric(name) == true || checkSpecialCharacter(name)==false) {
                  alert("Please just input character, do not input number or special character");
                  return false;
                }
                return true;
              }

              function checkSubmitColor() {
                return checkNameColor();
              }

              function checkNameCategory() {
                name = document.getElementById("namecategory").value;
                if (isNumeric(name) == true || checkSpecialCharacter(name)==false) {
                  alert("Please just input character, do not input number or special character");
                  return false;
                }
                return true;
              }

              function checkSubmitCategory() {
                return checkNameCategory();
              }
            </script>
            <%=SportJSPGUI.getSportAdmin()%>
          </div>
          <div class="col-md-6 chit-chat-layer1-rit">
            <%=GenderJSPGUI.getGenderAdmin()%>
          </div>
          <div class="clearfix"> </div>
        </div>
        <!--main page chit chating end here-->
        <!--main page chart start here-->
        <!--main page chart layer2-->
        <div class="chart-layer-2">
          <div class="col-md-6 chart-layer2-right">
            <%=CategoryJSPGUI.getCategoryAdmin()%>
          </div>
          <div class="col-md-6 chart-layer2-right">
          <%=ColorJSPGUI.getColorAdmin()%>
          </div>
          <div class="clearfix"> </div>
        </div>
        <div class="chart-layer-2">
          <div class="col-md-6 chart-layer2-right">
            <div class="prograc-blocks">
              <!--Progress bars-->
              <div class="home-progres-main">
                <h3>Total Sales</h3>
              </div>
              <div class='bar_group'>
                <%
                  for(int i=1; i<=12; i++){
                    if(BillDAO.getSaleOfMonth(i) == 0){%>
                <div class='bar_group__bar thin' label='<%=i%>' show_values='true' tooltip='true' value='0'></div>
                <%} else{%>
                <div class='bar_group__bar thin' label='<%=i%>' show_values='true' tooltip='true' value='<%=((int)BillDAO.getSaleOfMonth(i))%>'></div>
                <%}}%>
              </div>
              <script src="js/bars.js"></script>

              <!--//Progress bars-->
            </div>
          </div>

          <div class="clearfix"> </div>
        </div>
        <!--climate start here-->
        <!--climate end here-->
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