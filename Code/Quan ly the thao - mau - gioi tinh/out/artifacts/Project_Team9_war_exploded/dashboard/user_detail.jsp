<%@ page import="com.mypackage.Role" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.RoleDAO" %>
<%@ page import="com.mypackage.Account" %>
<%@ page import="com.mypackage.AccountDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 28/06/2016
  Time: 9:30 CH
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
  <title>Shoppy an Admin Panel Category Flat Bootstrap Responsive Website Template | Typography :: w3layouts</title>
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
            <a href="index.html"> <h1>Shoppy</h1>
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
                      <p>Malorum</p>
                      <span>Administrator</span>
                    </div>
                    <i class="fa fa-angle-down lnr"></i>
                    <i class="fa fa-angle-up lnr"></i>
                    <div class="clearfix"></div>
                  </div>
                </a>
                <ul class="dropdown-menu drp-mnu">
                  <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li>
                  <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li>
                  <li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
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
              <h3 class="ghj">User Management</h3>
            </div>

            <div class="clearfix"> </div>
            <!--bagets-->
            <%
              if(request.getParameter("id")==null || request.getParameter("id").trim().equals(""))
                response.sendRedirect("user.jsp");
              else{
                int id = Integer.parseInt(request.getParameter("id"));
                Account account = AccountDAO.getUserByID(id);
            %>
            <div class="appearance">
              <div class="col-md-6">
                <p><h3>Information</h3></p>
                <form method="post" action="EditUser.jsp">
                <table class="table table-bordered">
                  <tr>
                    <td width="28%">Username</td>
                    <td width="72%"><%=account.getM_Username()%></td>
                  </tr>
                  <tr>
                    <td>Name</td>
                    <td><%=account.getM_Name()%></td>
                  </tr>
                  <tr>
                    <td>Email</td>
                    <td><%=account.getM_Email()%></td>
                  </tr>
                  <tr>
                    <td>Address</td>
                    <td><%=account.getM_Address()%></td>
                  </tr>
                </table>
              </div>
              <div class="col-md-6">
                <div class="col-md-6 col-lg-9">
                  <br>
                  <br>
                  <br>
                  <table class="table table-bordered">
                    <tbody>
                    <tr>
                      <td>Phone</td>
                      <td><%=account.getM_Phone()%></td>
                    </tr>
                    <tr>
                      <td>Registed Date</td>
                      <td><%=account.getM_Date()%></td>
                    </tr>
                    <tr>
                      <td>Status</td>
                      <%if(account.getM_Status() == 1){%>
                        <td>Active</td>
                      <%}else{%>
                        <td>Inactive</td>
                      <%}%>
                    </tr>
                    <tr>
                      <td>Role</td>
                      <td><select name="role">
                        <%List<Role> list = RoleDAO.getAll();
                          Role role_name = RoleDAO.getByID(account.getM_Role());%>
                          <option value="<%=role_name.getM_ID()%>"><%=role_name.getM_Name()%></option>
                        <%for(Role role : list){
                          if(role.getM_ID() != account.getM_Role()){%>
                          <option value="<%=role.getM_ID()%>"><%=role.getM_Name()%></option>
                        <%}}%>
                      </select>
                        <input type="hidden" name="id" value="<%=account.getM_ID()%>">
                      </td>
                    </tr>
                    </tbody>
                  </table>
                  <input type="submit" name="edit" value="Edit">
                </div>
                </form>
                <%}%>
              </div>
              <div class="clearfix"> </div>
            </div>
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
        <li id="menu-home" ><a href="index.html"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
        <li>
          <ul>
            <li><a href="grids.html">Grids</a></li>
            <li><a href="portlet.html">Portlets</a></li>
          </ul>
        </li>

        <li id="menu-academico" ><a href="#"><i class="fa fa-file-text"></i><span>Pages</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-academico-sub" >
            <li id="menu-academico-boletim" ><a href="login.html">Login</a></li>
            <li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>
          </ul>
        </li>

        <li><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span></a></li>

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
