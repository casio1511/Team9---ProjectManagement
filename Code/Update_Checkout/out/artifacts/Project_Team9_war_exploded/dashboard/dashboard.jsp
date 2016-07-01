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
            <a href="index.jsp"> <h1>Shoes Store</h1>
              <!--<img id="logo" src="" alt="Logo"/>-->
            </a>
          </div>

          <div class="clearfix"> </div>
        </div>
        <div class="header-right">
          <div class="profile_details_left"><!--notifications of menu start -->
            <ul class="nofitications-dropdown">
              <li class="dropdown head-dpdn">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 3 new messages</h3>
                    </div>
                  </li>
                  <li><a href="#">
                    <div class="user_img"><img src="images/p4.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li class="odd"><a href="#">
                    <div class="user_img"><img src="images/p2.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor </p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li><a href="#">
                    <div class="user_img"><img src="images/p3.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="#">See all messages</a>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="dropdown head-dpdn">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 3 new notification</h3>
                    </div>
                  </li>
                  <li><a href="#">
                    <div class="user_img"><img src="images/p5.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li class="odd"><a href="#">
                    <div class="user_img"><img src="images/p6.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li><a href="#">
                    <div class="user_img"><img src="images/p7.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="#">See all notifications</a>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="dropdown head-dpdn">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">9</span></a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="notification_header">
                      <h3>You have 8 pending task</h3>
                    </div>
                  </li>
                  <li><a href="#">
                    <div class="task-info">
                      <span class="task-desc">Database update</span><span class="percentage">40%</span>
                      <div class="clearfix"></div>
                    </div>
                    <div class="progress progress-striped active">
                      <div class="bar yellow" style="width:40%;"></div>
                    </div>
                  </a></li>
                  <li><a href="#">
                    <div class="task-info">
                      <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                      <div class="clearfix"></div>
                    </div>
                    <div class="progress progress-striped active">
                      <div class="bar green" style="width:90%;"></div>
                    </div>
                  </a></li>
                  <li><a href="#">
                    <div class="task-info">
                      <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                      <div class="clearfix"></div>
                    </div>
                    <div class="progress progress-striped active">
                      <div class="bar red" style="width: 33%;"></div>
                    </div>
                  </a></li>
                  <li><a href="#">
                    <div class="task-info">
                      <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                      <div class="clearfix"></div>
                    </div>
                    <div class="progress progress-striped active">
                      <div class="bar  blue" style="width: 80%;"></div>
                    </div>
                  </a></li>
                  <li>
                    <div class="notification_bottom">
                      <a href="#">See all pending tasks</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
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
                  <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li>
                  <li> <a href="logout"><i class="fa fa-sign-out"></i> Logout</a> </li>
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
                <h3><%=AccountDAO.countAll()%></h3>
                <h4>Registered User</h4>
                <a href="user.jsp"><p>Details</p></a>
              </div>
              <div class="col-md-4 market-update-right">
                <i class="fa fa-eye"> </i>
              </div>
              <div class="clearfix"> </div>
            </div>
          </div>

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
            <div class="work-progres">
              <div class="chit-chat-heading">
                Sport Management
              </div>
              <div class="table-responsive">
                <form method="post" action="EditType.jsp">
                <table class="table table-hover">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th></th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  <%
                    List<Sport> list_sport = SportDAO.getAll();
                    for(Sport sport : list_sport){%>
                  <tr>
                    <td><%=sport.getM_ID()%></td>
                    <td>
                      <input type="text" value="<%=sport.getM_Name()%>" name="sport<%=sport.getM_ID()%>" style="border:none">
                    </td>
                    <td><a href="EditType.jsp?type=sport&&id=<%=sport.getM_ID()%>" style="text-decoration: none"><span class="label label-danger">Delete</span></a></td>
                  </tr>
                  <%}%>
                  <tr><td></td><td colspan="2"><input type="text" name="namesport" required style="border: none;"></td></tr>
                  <tr><td colspan="3"><input type="submit" name="sportsubmit" value="Save"></td></tr>
                  </tbody>
                </table>
                  </form>
              </div>
            </div>
          </div>
          <div class="col-md-6 chit-chat-layer1-rit">
            <div class="work-progres">
              <div class="chit-chat-heading">
                Gender Management
              </div>
              <div class="table-responsive">
                <div class="table-responsive">
                  <form method="post" action="EditType.jsp">
                  <table class="table table-hover">
                    <thead>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th></th>
                      <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                      List<Gender> list_gender = GenderDAO.getAll();
                      for(Gender gender : list_gender){%>
                    <tr>
                      <td><%=gender.getM_ID()%></td>
                      <td>
                        <input type="text" value="<%=gender.getM_Name()%>" name="gender<%=gender.getM_ID()%>" style="border:none">
                      </td>
                      <td><a href="EditType.jsp?type=gender&&id=<%=gender.getM_ID()%>" style="text-decoration: none"><span class="label label-danger">Delete</span></a></td>
                    </tr>
                    <%}%>
                    <tr><td></td><td colspan="2"><input type="text" name="namegender" required style="border:none"></td></tr>
                    <tr><td colspan="3"><input type="submit" name="gendersubmit" value="Save"></td></tr>
                    </tbody>
                  </table>
                  </form>
                </div>

              </div>
            </div>
          </div>
          <div class="clearfix"> </div>
        </div>
        <!--main page chit chating end here-->
        <!--main page chart start here-->
        <!--main page chart layer2-->
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
          <div class="col-md-6 chart-layer2-right">
            <div class="work-progres">
              <div class="chit-chat-heading">
                Color Management
              </div>
              <form method="post" action="EditType.jsp">
              <table class="table table-hover">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th></th>
                </tr>
                </thead>
                <tbody>
                <%
                  List<Color> list_color = ColorDAO.getAll();
                  for(Color color : list_color){%>
                <tr>
                  <td><%=color.getM_ID()%></td>
                  <td>
                    <input type="text" name="color<%=color.getM_ID()%>" value="<%=color.getM_Name()%>" style="border: none">
                  </td>
                  <td><a href="EditType.jsp?type=color&&id=<%=color.getM_ID()%>" style="text-decoration: none"><span class="label label-danger">Delete</span></a></td>
                </tr>
                <%}%>
                <tr><td></td><td colspan="2"><input type="text" name="namecolor" required style="border:none"></td></tr>
                <tr><td colspan="3"><input type="submit" name="colorsubmit" value="Edit"></td></tr>
                </tbody>
              </table>
              </form>
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
        <li id="menu-home" ><a href="index.html"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
        </li>
        </li>
        </li>
        <li><a href="#"><i class="fa fa-envelope"></i><span>Mailbox</span><span style="float: right"></span></a>

        </li>
        <li><a href="#"><i class="fa fa-cog"></i><span>System</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-academico-sub" >
            <li id="menu-academico-avaliacoes" ><a href="404.html">404</a></li>
            <li id="menu-academico-boletim" ><a href="blank.html">Blank</a></li>
          </ul>
        </li>
        <li><a href="#"><i class="fa fa-shopping-cart"></i><span>E-Commerce</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-academico-sub" >
            <li id="menu-academico-avaliacoes" ><a href="product.html">Product</a></li>
            <li id="menu-academico-boletim" ><a href="price.html">Price</a></li>
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