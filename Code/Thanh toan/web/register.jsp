<%@ page import="com.mypackage.Sport" %>
<%@ page import="com.mypackage.SportDAO" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 08/06/2016
  Time: 9:43 CH
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
  <title>Register</title>
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
        <a class="btn btn-default log-bar" href="register.jsp" role="button">Sign up</a>
        <a class="btn btn-default log-bar" href="signup.jsp" role="button">Login</a>
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
              <li><a href="index.jsp">Home</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shoes<b class="caret"></b></a>
                <ul class="dropdown-menu multi-column columns-3">
                  <div class="row">
                    <div class="col-sm-4 menu-img-pad">
                      <ul class="m
                      ulti-column-dropdown">
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
          <div class="clearfix"></div>
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
      <li><a href="signup.jsp">LOGIN</a></li>
      <li class="active">REGISTER</li>
    </ol>
  </div>
</div>
<!-- reg-form -->
<%
  if(session.getAttribute("username")!=null)
    response.sendRedirect("information.jsp");
%>
<script type="text/javascript" src="js/jquery-latest.min.js"></script>
<script type="text/javascript">

  //chek username
  var chekusername = false;
  $(document).ready(function() {
    $(".username").change(function () {
      var username = $(this).val();
      if (username.length < 3) {
        $(".checkusername").html("<font color=red>Your username must be longer than <b>3</b> characters</font>");
        chekusername = false;
      }
      else if(username.length > 8) {
        $(".checkusername").html("<font color=red>Your username must be shorter than <b>8</b> characters</font>");
        chekusername = false;
      }
      if ((username.length >= 3) && (username.length <= 8)) {
        $(".checkusername").html("<font color=gray> Checking...</font>");
        $.ajax({
          type: "POST",
          url: "check",
          data: "username=" + username,
          success: function (msg) {
            var test = "true";
            if (msg.toString().trim() == test) {
              $(".checkusername").html("<font color=green>" + username + " is valid</font>");
              chekusername = true;
            }
            else {
              $(".checkusername").html("<font color=red>" + username + " is available</font>");
              chekusername = false;
            }
          }
        });
      }
    });
  });

  //check email
  var checkemail = false;
  $(document).ready(function() {
    $(".email").change(function () {
      var email = $(this).val();
      var isValid = false;
      var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
      if (regex.test(email)) {
        isValid = true;
      }
      if (isValid == false || CheckSpace(email) == true) {
        document.getElementById("checkemail").innerHTML = "<font color=red>Input your email</font>";
        checkemail = false;
      }
      else {
        $(".checkemail").html("<font color=gray>Checking...</font>");
        $.ajax({
          type: "POST",
          url: "check",
          data: "email=" + email,
          success: function (msg) {
            var test = "true";
            if (msg.toString().trim() == test) {
              $(".checkemail").html("<font color=green>" + email + " is valid</font>");
              checkemail = true;
            }
            else {
              $(".checkemail").html("<font color=red>" + email + " is available</font>");
              checkemail = false;
            }
          }
        });
      }
    });
  });

  function CheckSpace(value) {
    if(value.trim() == "")
      return true;
    else
      return false;
  }

  //kiểm tra mật khẩu
  function CheckPassword() {
    var check = false;
    password=document.getElementById("password").value;
    repassword=document.getElementById("repassword").value;
    if(CheckSpace(password) === true){
      document.getElementById("checkpassword").innerHTML="Input your password";
    } else if(CheckSpace(repassword) === true){
      document.getElementById("checkrepassword").innerHTML="Input your password <b>2</b> times the same!";
    } else if(CheckSpace(password) === false && CheckSpace(repassword)===false){
      if(password.length <= 3 || password.length > 10){
        if(password.length <= 3)
          document.getElementById("checkpassword").innerHTML="Your password must be longer than 3 characters";
        else if(password.length > 10)
          document.getElementById("checkpassword").innerHTML="Your password must be shorter than 10 characters";
        document.getElementById("checkrepassword").innerHTML=" ";
      } else if(password == repassword){
        document.getElementById("checkpassword").innerHTML=" ";
        document.getElementById("checkrepassword").innerHTML=" ";
        check =  true;
      } else {

        document.getElementById("checkpassword").innerHTML=" ";
        document.getElementById("checkrepassword").innerHTML="Input your password <b>2</b> times the same!";
      }
    }
    return check;
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
<div class="reg-form">
  <div class="container">
    <div class="reg">
      <h3>Register Now</h3>
      <%if(request.getParameter("error") != null){%>
        <p style="color:red">Registered Fail</p>
      <%}%>
      <p>Welcome, please enter the following details to continue.</p>
      <p>If you have previously registered with us, <a href="signup.jsp">click here to login</a></p>
      <form onsubmit='return CheckInput()' action="registercontroller" method="post">
        <ul>
          <li class="text-info" style="color: black">User Name: </li>
          <li><input type="text" id="username" name="username" class="username" placeholder="enter your username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'enter your username'"></li>
          <li><span class="checkusername" id="checkusername" style="color:red"></span></li>
        </ul>
        <ul>
          <li class="text-info" style="color: black">Password: </li>
          <li><input type="password" placeholder="enter your password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'enter your password'" id="password" name="password" onchange="CheckPassword()"></li>
          <li><span id="checkpassword" style="color:red"></span></li>
        </ul>
        <ul>
          <li class="text-info" style="color: black">Re-enter Password:</li>
          <li><input type="password" placeholder="re-enter your password" onfocus="this.placeholder = ''" onblur="this.placeholder = 're-enter your password'" id="repassword" name="repassword" onchange="CheckPassword()"></li>
          <li><span id="checkrepassword" style="color:red"></span></li>
        </ul>
        <ul>
          <li class="text-info" style="color: black">Full Name: </li>
          <li><input type="text" placeholder="enter your full name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'enter your full name'" id="name" name="name" onchange="CheckName()"></li>
          <li><span class="checkname" id="checkname" style="color:red"></span></li>
        </ul>
        <ul>
          <li class="text-info" style="color: black">Email: </li>
          <li><input type="text" placeholder="enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'enter your email'" id="email" name="email" class="email"></li>
          <li><span class="checkemail" id="checkemail"></span></li>
        </ul>
        <ul>
          <li class="text-info" style="color: black">Address:</li>
          <li><input type="text" placeholder="enter your address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'enter your address'" id="address" name="address" onchange="CheckAddress()"></li>
          <li><span id="checkaddress" style="color:red"></span></li>
        </ul>
        <ul>
          <li class="text-info" style="color: black">Mobile Number:</li>
          <li><input type="text" placeholder="enter your phone number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'enter your phone number'" id="phone" name="phone" onchange="CheckPhone()"></li>
          <li><span id="checkphone" style="color:red"></span></li>
        </ul>
        <input type="submit" value="Register Now">

      </form>
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