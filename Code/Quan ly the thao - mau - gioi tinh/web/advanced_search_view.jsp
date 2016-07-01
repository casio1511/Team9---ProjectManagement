<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%--
  Created by IntelliJ IDEA.
  User: Phuong Tran
  Date: 09/06/2016
  Time: 1:22 CH
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
    <title>Products</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta charset utf="8">
    <!--fonts-->
    <link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>

    <!--fonts-->
    <!--form-css-->
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
    <link type="text/css" rel="stylesheet" href="css/tsc_pagination.css" />
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

                <a class="btn btn-default log-bar" href="information.jsp" role="button">My Information</a>
                <a class="btn btn-default log-bar" href="logout" role="button">Logout</a>

                <div class="cart box_1">
                    <a href="checkout.jsp">

                        <h3>
                            <div class="total">
                                <span>item(s)</span></div></h3>
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
<div class="head-bread">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="index.jsp">Home</a></li>
            <li class="active">SEARCH</li>
        </ol>
    </div>
</div>
<div class="products-gallery">
    <div class="container">
        <div class="col-md-9 grid-gallery">
            <!--Show san pham-->





            <%
                int count = 0;
                if (request.getAttribute("piList") != null)
                {
            %>

            <%
                ArrayList al = (ArrayList) request.getAttribute("piList");
                Iterator itr = al.iterator();
                while (itr.hasNext())
                {


                    count++;
                    ArrayList pList = (ArrayList) itr.next();

            %>


            <div class='col-md-4 grid-stn simpleCart_shelfItem'>
                <div class='ih-item square effect3 bottom_to_top'>
                    <div class='bottom-2-top'>
                        <div class='img'><img src='images/image_project/<%=pList.get(8)%>' alt='class='img-responsive gri-wid width='200px' height='200px'></div>
                        <div class='info'><div class='pull-left styl-hdn'>
                            <h3><%=pList.get(1)%></h3></div><div class='pull-right styl-price'>
                            <p><a href='single.jsp?id=<%=pList.get(0)%>' class='item_add'><span class='glyphicon glyphicon-shopping-cart grid-cart' aria-hidden='true'></span>
                                <span class='item_price'><%=pList.get(5)%> dong</span></a></p>
                        </div><div class='clearfix'></div></div></div></div>
                <div class='quick-view'><a href='single.jsp?id=<%=pList.get(0)%>'>Quick view</a>
                </div></div>










            <%
                }
            %>

            <%
                }
                if (count == 0)
                {
            %>
            <div align="center" ><img src="images/not_available.jpg"></div>
            <%
                }
            %>

            <div class="clearfix"></div><br><br>
            <div>

                <ul class="tsc_pagination tsc_paginationB tsc_paginationB08">

                    <li><a href="product.jsp?=&&page=1" class="first">First</a></li>
                    <li><a href="product.jsp?=&&page=" class="previous">Previous</a></li>

                    <li><a href="product.jsp?=&&page=" class="current"></a></li>
                    <li><a href="product.jsp?>=&&page="></a></li>

                    <li><a href="product.jsp?=&&page=" class="next">Next</a></li>
                    <li><a href="product.jsp?=&&page=" class="last">Last</a></li>
                </ul>

                <ul class="tsc_pagination tsc_paginationB tsc_paginationB08">
                    <li><a href="product.jsp?=&&page=1">1</a></li>
                </ul>

                <ul class="tsc_pagination tsc_paginationB tsc_paginationB08">

                    <li><a href="product.jsp?page=1" class="first">First</a></li>
                    <li><a href="product.jsp?page=" class="previous">Previous</a></li>

                    <li><a href="product.jsp?page=" class="current">
                        <li><a href="product.jsp?page="

                        <li><a href="product.jsp?page=" class="next">Next</a></li>
                        <li><a href="product.jsp?page=" class="last">Last</a></li>
                </ul>

                <ul class="tsc_pagination tsc_paginationB tsc_paginationB08">
                    <li><a href="product.jsp?page=1">1</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-3 grid-details">
            <div class="grid-addon">
                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
                        <div class="tab1">
                            <ul class="place">
                                <li class="sort">Shoes</li>
                                <li class="by"><img src="images/do.png" alt=""></li>
                                <div class="clearfix"> </div>
                            </ul>
                            <div class="single-bottom">

                            </div>
                        </div>
                        <!--script-->
                        <script>
                            $(document).ready(function(){
                                $(".tab1 .single-bottom").hide();
                                $(".tab1 ul").click(function(){
                                    $(".tab1 .single-bottom").slideToggle(300);
                                })
                            });
                        </script>
                        <!-- script -->
                    </div>
                </section>
                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Brand</h4>
                        <div class="tab2">
                            <ul class="place">
                                <li class="sort">Shoes</li>
                                <li class="by"><img src="images/do.png" alt=""></li>
                                <div class="clearfix"> </div>
                            </ul>
                            <div class="single-bottom">

                            </div>
                        </div>
                        <!--script-->
                        <script>
                            $(document).ready(function(){
                                $(".tab2 .single-bottom").hide();
                                $(".tab2 ul").click(function(){
                                    $(".tab2 .single-bottom").slideToggle(300);
                                })
                            });
                        </script>
                        <!-- script -->
                    </div>
                </section>
                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Gender</h4>
                        <div class="tab3">
                            <ul class="place">
                                <li class="sort">Shoes</li>
                                <li class="by"><img src="images/do.png" alt=""></li>
                                <div class="clearfix"> </div>
                            </ul>
                            <div class="single-bottom">

                            </div>
                        </div>
                        <!--script-->
                        <script>
                            $(document).ready(function(){
                                $(".tab3 .single-bottom").hide();
                                $(".tab3 ul").click(function(){
                                    $(".tab3 .single-bottom").slideToggle(300);
                                })
                            });
                        </script>
                        <!-- script -->
                    </div>
                </section>
                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Arrangememt</h4>
                        <div class="tab4">
                            <ul class="place">
                                <li class="sort">Shoes</li>
                                <li class="by"><img src="images/do.png" alt=""></li>
                                <div class="clearfix"> </div>
                            </ul>
                            <div class="single-bottom">
                                <a href="product.jsp?arrangement=1"><p>Most View</p></a>
                                <a href="product.jsp?arrangement=2"><p>Newest</p></a>
                            </div>
                        </div>
                        <!--script-->
                        <script>
                            $(document).ready(function(){
                                $(".tab4 .single-bottom").hide();
                                $(".tab4 ul").click(function(){
                                    $(".tab4 .single-bottom").slideToggle(300);
                                })
                            });
                        </script>
                        <!-- script -->
                    </div>
                </section>
            </div>
        </div>
        <div class="clearfix"></div>
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
