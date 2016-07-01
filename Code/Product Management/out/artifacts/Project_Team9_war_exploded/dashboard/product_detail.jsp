<%@ page import="java.util.List" %>
<%@ page import="com.mypackage.*" %>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
  <title>All products</title>
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
          <!--search-box-->
          <div class="search-box">
            <form>
              <input type="text" placeholder="Search..." required="">
              <input type="submit" value="">
            </form>
          </div><!--//end-search-box-->
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
                    <div class="user_img"><img src="../images/p4.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li class="odd"><a href="#">
                    <div class="user_img"><img src="../images/p2.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor </p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li><a href="#">
                    <div class="user_img"><img src="../images/p3.png" alt=""></div>
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
                    <div class="user_img"><img src="../images/p5.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li class="odd"><a href="#">
                    <div class="user_img"><img src="../images/p6.png" alt=""></div>
                    <div class="notification_desc">
                      <p>Lorem ipsum dolor</p>
                      <p><span>1 hour ago</span></p>
                    </div>
                    <div class="clearfix"></div>
                  </a></li>
                  <li><a href="#">
                    <div class="user_img"><img src="../images/p7.png" alt=""></div>
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
                    <span class="prfil-img"><img src="../images/p1.png" alt=""> </span>
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
      <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
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

        function CheckSpace(value) {
          if(value.trim() == "")
            return true;
          else
            return false;
        }

        function CheckName () {
          name=document.getElementById("name").value;
          if(CheckSpace(name)==true){
            document.getElementById("checkname").innerHTML="<font color=red>Input your product name</font>";
            return false;//rong
          }
          else{
            document.getElementById("checkname").innerHTML="";
            return true;
          }
        }

        function ValidateFileUpload() {
          var fuData = document.getElementById('image');
          var FileUploadPath = fuData.value;
          //To check if user upload any file
          if (FileUploadPath == '') {
            document.getElementById("checkimage").innerHTML="<font color=red>Please upload an image</font>";
            return false;
          } else {
            var Extension = FileUploadPath.substring(
                    FileUploadPath.lastIndexOf('.') + 1).toLowerCase();
            //The file uploaded is an image
            if (Extension == "gif" || Extension == "png" || Extension == "bmp" || Extension == "jpeg" || Extension == "jpg") {
              // To Display
              if (fuData.files && fuData.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                  $('#blah').attr('src', e.target.result);
                }
                reader.readAsDataURL(fuData.files[0]);
                document.getElementById("checkimage").innerHTML="";
                return true;
              }
            }
//The file upload is NOT an image
            else {
              document.getElementById("checkimage").innerHTML="<font color=red>Photo only allows file types of GIF, PNG, JPG, JPEG and BMP.</font>";
              return false;
            }
          }
        }

        function CheckInput() {
          if(ValidateFileUpload()==true && CheckName()==true){
            return true;
          }
          else {
            alert("Your information is not correct");
            return false;
          }
        }
      </script>
      <div class="inner-block">
        <div class="typography">
          <div class="typo-badges">
            <div class="appearance">
              <h3 class="ghj">Product Management</h3>
              <div class="col-md-6">
                <p><h3>Add new product</h3></p>
                <form method="post" action="ProductController.jsp" onsubmit="return CheckInput()" enctype="multipart/form-data">
                  <style>
                    tr td{
                      padding-bottom: 10px;
                    }

                    input[type=text], select, [type=number]{
                      width: 100%;
                      padding-top: 10px;
                      padding-bottom: 10px;

                    }

                  </style>
                <table style="border: none" width="70%">
                  <tr>
                    <td>Name</td>
                    <td width="40%">
                      <input type="text" name="name" id="name" onchange="CheckName()">
                    <div id="checkname"></div>
                    </td>
                  </tr>
                  <tr>
                    <td width="20%">Quantity</td>
                    <td width="80%"><input type='number' min='0' name="quantity"></td>
                  </tr>
                  <tr>
                    <td>Price</td>
                    <td><input type='number' min='1000' name="price"></td>
                  </tr>

                  <tr>
                    <td>Size</td>
                    <td><input type="number" min="5" name="size" ></td>
                  </tr>
                  <tr>
                    <td width="20%">Category</td>
                    <td width="80%"><select name="category">
                      <%List<Category> list_category = CategoryDAO.getAll();
                        for(Category category : list_category){%>
                      <option value="<%=category.getM_ID()%>"><%=category.getM_Name()%></option>
                      <%}%>
                    </select>
                      <p></p>
                    </td>
                  </tr>
                  <tr>
                    <td>Sport</td>
                    <td><select name="sport">
                      <%List<Sport> list_sport = SportDAO.getAll();
                        for(Sport sport : list_sport){%>
                      <option value="<%=sport.getM_ID()%>"><%=sport.getM_Name()%></option>
                      <%}%>
                    </select></td>
                  </tr>
                </table>
              </div>
              <div class="col-md-6">
                <div class="col-md-6">
                  <br><br>
                  <table style="border: none" width="30%">
                    <tr>
                      <td>Color</td>
                      <td><select name="color">
                        <%List<Color> list_color = ColorDAO.getAll();
                          for(Color color : list_color){%>
                        <option value="<%=color.getM_ID()%>"><%=color.getM_Name()%></option>
                        <%}%>
                      </select></td>
                    </tr>
                    <tr>
                      <td>Gender</td>
                      <td><select name="gender">
                        <%List<Gender> list_gender = GenderDAO.getAll();
                          for(Gender gender : list_gender){%>
                        <option value="<%=gender.getM_ID()%>"><%=gender.getM_Name()%></option>
                        <%}%>
                      </select></td>
                    </tr>

                    <tr>
                      <td>Status</td>
                      <td><select name="status">
                        <option value="1">Available</option>
                        <option value="2">Out of stock</option>
                        </select>
                      </td>
                    </tr>
                    <br><tr>
                      <td>Image</td>
                      <td>
                        <input type="file" id="image" name="image" width="30%" onchange="ValidateFileUpload()">
                        <p id="checkimage"></p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" align="center"><input type="submit" value="Add" name="submit" align="center" class="add_submit"></td>
                    </tr>
                  </table>
                  </form>
                </div>
              </div>
              <div class="clearfix"> </div>
            </div>
            <!--bagets-->
            <%
              int page_number = 1;
              if(request.getParameter("page") == null)
                page_number = 1;
              else if(request.getParameter("page") != null) {
                String page_temp = request.getParameter("page");
                int flag = 1;
                for (char c : page_temp.toCharArray())
                  if (!Character.isDigit(c))
                    flag = 0;
                if (flag == 0)
                  page_number = 1;
                else
                  page_number = Integer.parseInt(request.getParameter("page"));
              }
              int total = ProductDAO.countGetAll();
              if(page_number > total || page_number <= 0)
                page_number = 1;

              int page_total = total/6;
              if(total%6 != 0)
                page_total++;
            %>
            <div class="appearance">
              <h3 class="ghj"></h3>
              <div class="work-progres">
                <div class="chit-chat-heading">
                  All Products
                </div>
                <div class="table-responsive">
                  <form method="post" action="AddSize.jsp">
                  <table width="89%" class="table table-hover">
                    <tr>
                      <td>ID</td>
                      <td>Images</td>
                      <td>Name</td>
                      <td>Size</td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                      <%
                        List<Product> list_product = ProductDAO.getAllPaging(page_number, 6);
                        for(Product product : list_product){%>
                          <tr>
                            <td><%=product.getM_ID()%></td>
                            <td><img src="../images/image_project/<%=product.getM_Image()%>" alt="" width="53" height="46" class="img-responsive"></td>
                            <td><%=product.getM_Name()%></td>
                            <td>
                              <select>
                                <%List<Product> size = ProductDAO.getSizeOfProduct(product);
                                  for(int i=0; i<size.size(); i++){%>
                                    <option><%=size.get(i).getM_Size()%></option>
                                <%}%>
                              </select>
                            </td>
                            <td>
                              <input type="number" name="size" min="5">
                              <input type="hidden" name="id" value="<%=product.getM_ID()%>">
                            </td>
                            <td><input type="submit" value="Add size"></td>
                            <td><a href="product_edit.jsp?id=<%=product.getM_ID()%>"><span class="label label-success">Edit product</span></a></td>
                            <td><a href="ProductController.jsp?action=delete&&id=<%=product.getM_ID()%>" style="text-decoration: none"><span class="label label-danger">Delete</span></a></td>
                          </tr>
                      <%}%>
                    <tr>
                      <%if(page_number == 1 && total > 6){%>
                        <td><a href="product_detail.jsp?page=2">Next</a></td>
                      <%}else if(page_number == page_total && total > 6){%>
                        <td><a href="product_detail.jsp?page=<%=page_number-1%>">Prev</a></td>
                      <%}else if(total == 6){%>
                        <td></td>
                      <%}else{%>
                      <td>
                        <a href="product_detail.jsp?page=<%=page_number-1%>">Prev</a>&nbsp;&nbsp;&nbsp;
                        <a href="product_detail.jsp?page=<%=page_number+1%>">Next</a>
                      </td>
                      <%}%>
                    </tr>
                  </table>
                  </form>
                </div>
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
        <li><a href="#"><i class="fa fa-cogs"></i><span>Components</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul>
            <li><a href="grids.html">Grids</a></li>
            <li><a href="portlet.html">Portlets</a></li>
          </ul>
        </li>
        <li id="menu-comunicacao" ><a href="#"><i class="fa fa-book nav_icon"></i><span>Element</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-comunicacao-sub" >
            <li id="menu-mensagens" style="width: 120px" ><a href="buttons.html">Buttons</a>
            </li>
            <li id="menu-arquivos" ><a href="typography.html">Typography</a></li>
            <li id="menu-arquivos" ><a href="icons.html">Icons</a></li>
          </ul>
        </li>
        <li><a href="maps.html"><i class="fa fa-map-marker"></i><span>Maps</span></a></li>
        <li id="menu-academico" ><a href="#"><i class="fa fa-file-text"></i><span>Pages</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-academico-sub" >
            <li id="menu-academico-boletim" ><a href="login.html">Login</a></li>
            <li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>
          </ul>
        </li>

        <li><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span></a></li>
        <li><a href="#"><i class="fa fa-envelope"></i><span>Mailbox</span><span class="fa fa-angle-right" style="float: right"></span></a>
          <ul id="menu-academico-sub" >
            <li id="menu-academico-avaliacoes" ><a href="inbox.html">Inbox</a></li>
            <li id="menu-academico-boletim" ><a href="inbox-details.html">Compose email</a></li>
          </ul>
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