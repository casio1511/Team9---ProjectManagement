<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 29/06/2016
  Time: 1:41 CH
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
  <title>Personal Information</title>
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
        <%if(session.getAttribute("username") == null){
          response.sendRedirect("signup.jsp");
        }else{
          int role = (int)session.getAttribute("role");
          if(role == 0){%>
        <a class="btn btn-default log-bar" href="information.jsp" role="button">My Information</a>
        <a class="btn btn-default log-bar" href="transaction.jsp" role="button">My Transaction</a>
        <a class="btn btn-default log-bar" href="logout" role="button">Logout</a>
        <%}else{
          response.sendRedirect("/dashboard/dashboard.jsp");
        }
        }%>
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
              <li><a href="advanced_search.jsp">Search</a></li>
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
      <li class="active">Information</li>
    </ol>
  </div>
</div>
<!-- check-out -->
<%
  Account account = AccountDAO.getUserByUsername((String)session.getAttribute("username"));
%>
<div class="check">
  <script type="text/javascript" src="js/jquery-latest.min.js"></script>
  <script>
    function isDate(val) {
      var d = new Date(val);
      return !isNaN(d.valueOf());
    }

    function CheckSpace(value) {
      if(value.trim() == "")
        return true;
      else
        return false;
    }

    function CheckName(){
      name = document.getElementById("name").value;
      if(CheckSpace(name) == true){
        document.getElementById("checkname").innerHTML="Input your name";
        return false;
      }
      else {
        document.getElementById("checkname").innerHTML = "";
        return true;
      }
    }

    function CheckPhone () {
      phone=document.getElementById("phone").value;
      if((isNaN(phone) == true)||(CheckSpace(phone)==true)||phone.length <10 || phone.length > 11){
        document.getElementById("checkphone").innerHTML="Input your phone number";
        return false;//ko là số
      }else {
        document.getElementById("checkphone").innerHTML = "";
        return true;
      }
    }

    //kiểm tra password
    var checkpassword = true;
    $("document").ready(function () {
      $(".password").change(function () {

        var password = $(this).val();
        var id = $(".hiddenid").val();
        if ((password.length >= 3)&&(password.length <= 8)) {
          $(".checkpass").html("<font color=gray> Checking...</font>");
          $.ajax({
            type: "POST",
            url: "checkpass",
            data: "password=" + password + "&&id=" + id,
            success: function (msg){
              kq = "true";
              if(msg.toString().trim() == kq){
                $(".checkpass").html("<font color='green'>You have permitted to change the password</font>");
                $(".result").val("pass");
                checkpassword = true;
              }
              else{
                $(".checkpass").html("<font color='red'>You do not have permitted to change the password</font>");
                $(".result").val("false");
                checkpassword = false;
              }
            }
          });
        } else {
          if(CheckSpace(password)==true){
            checkpassword = true;
            $(".checkpass").html("<font color='red'> Your password will not be changed </font>");
            $(".result").val("false");
          }
        }
      });
    });

    function CheckPass() {
      var check = false;
      newpassword=document.getElementById("newpassword").value;
      repassword =document.getElementById("repassword").value;
      if(CheckSpace(newpassword) === true){
        document.getElementById("checknewpassword").innerHTML="Input your password";
      } else if(CheckSpace(repassword) === true){
        document.getElementById("checkrepassword").innerHTML="Input your password <b>2</b> times the same!";
      } else if(CheckSpace(newpassword) === false && CheckSpace(repassword)===false){
        if(newpassword.length <= 3 || newpassword.length > 10){
          if(newpassword.length <= 3)
            document.getElementById("checknewpassword").innerHTML="Your password must be longer than 3 characters";
          else if(newpassword.length > 10)
            document.getElementById("checknewpassword").innerHTML="Your password must be shorter than 10 characters";
          document.getElementById("checkrepassword").innerHTML=" ";
        } else if(newpassword == repassword){
          document.getElementById("checknewpassword").innerHTML=" ";
          document.getElementById("checkrepassword").innerHTML=" ";
          check =  true;
        } else {
          document.getElementById("checknewpassword").innerHTML=" ";
          document.getElementById("checkrepassword").innerHTML="Input your password <b>2</b> times the same!";
        }
      }
      return check;
    }

    function CheckInput() {
      if(CheckPhone() == true && CheckName() ==true && CheckPass()==true){
        return true;
      }
      else {
        alert("Your value is not correct!");
        return false;
      }
    }

  </script>
  <div class="container" >
    <%=AccountJSPGUI.ShowPersonalInfo(account)%>
  </div>
  <div class="footer-grid">
    <div class="container">
      <div class="col-md-2 re-ft-grd">
        <h3>Categories</h3>
        <ul class="categories">
          <%List<Category> list_category = CategoryDAO.getAll();
            for(Category category : list_category){%>
          <li><a href="product.jsp?sport=<%=category.getM_ID()%>"><%=category.getM_Name()%></a></li>
          <%}%>
        </ul>
      </div>
      <div class="col-md-2 re-ft-grd">
        <h3>Short links</h3>
        <ul class="shot-links">
          <li><a href="contact.jsp">Contact us</a></li>
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
            <a href="index.html" class="ft-log">N-AIR</a>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
    <div class="copy-rt">
      <div class="container">
        <p>&copy;   2016 N-AIR All Rights Reserved. Design by Group 9 - Project Manager - University of Science
        <p>   Group member: <a href="#">Phuong Tran - Minh Quan - Duc Vinh</a></p>
      </div>
    </div>
  </div>
</body>
</html>