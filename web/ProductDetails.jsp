<%-- 
    Document   : newjsp
    Created on : 17 Jan, 2017, 12:41:24 PM
    Author     : ASUS_PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    </head>
    <body>
        <!-- header-section-starts -->
	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<ul>
						<li><a href="account.html"><span class="glyphicon glyphicon-user"> </span>Login</a></li>
						<li><a href="register.html"><span class="glyphicon glyphicon-lock"> </span>Create an Account</a></li>			
					</ul>
				</div>
				<div class="header-right">
						<div class="cart box_1">
							<a href="checkout.jsp">
								<h3> <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="images/bag.png" alt=""></h3>
							</a>	
							<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
							<div class="clearfix"> </div>
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
			<div class="banner-top">
		<div class="container">
				<nav class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
				<div class="logo">
					<h1><a href="index.html"><span>L</span> Mart</a></h1>
				</div>
	    </div>
	    <!--/.navbar-header-->
	
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	        <ul class="nav navbar-nav">
			<li><a href="index.html">Home</a></li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Beer <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			           <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Beer</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Kingfisher&type=beer">1. Kingfisher</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Royal Challenge&type=beer">2. Royal Challenge</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Haywards&type=beer">3. Haywards</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Beer</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Heineken&type=beer">4. Heineken</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Budweiser&type=beer">5. Budweiser</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Carlsberg&type=beer">6. Carlsberg</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Beer</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Kalyani Black Label&type=beer">7. Kalyani Black Label</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Foster Lager&type=beer">8. Foster Lager</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Corona&type=beer">9. Corona</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Kings&type=beer">10. Kings</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Whisky <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			             <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Whisky</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=McDowells&type=whisky">1. McDowell's No 1 Reserve</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Officers Choice&type=whisky">2. Officer's Choice</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Royal Stag&type=whisky">3. Royal Stag</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Whisky</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Bagpiper&type=whisky">4. Bagpiper</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Old Tavern&type=whisky">5. Old Tavern</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Original Choice&type=whisky">6. Original Choice</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Whisky</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Imperial Blue&type=whisky">7. Imperial Blue</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Haywards Fine&type=whisky">8. Haywards Fine</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=8 PM&type=whisky">9. 8 PM</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Director's Special&type=whisky">10. Director's Special</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Rum <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-2">
			             <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Rum</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=McDowells&type=rum">1. Mc Dowell's</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Malibu&type=rum">2. Malibu</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Bacardi&type=rum">3. Bacardi</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Rum</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Old Monk&type=rum">4. Old Monk</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Havana Club&type=rum">5. Havana Club</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Captain Morgan&type=rum">6. Captain Morgan</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Rum</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Contessa&type=rum">7. Contessa</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Old Port&type=rum">8. Old Port</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Jolly Roger&type=rum">9. Jolly Roger</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Hercules&type=rum">10. Hercules</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
					   <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Wine <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Wine</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Chene Grand Reserve&type=wine">1. Chene Grand Reserve</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Rasa Shiraz&type=wine">2. Rasa Shiraz</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Grover La Reserve&type=wine">3. Grover La'Reserve</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Wine</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Cabernet Sauvignon Reserve/Revelio&type=wine">4. Cabernet Sauvignon Reserve/Revelio</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Chateaud Ori Merlot&type=wine">5. Chateau d'Ori Merlot</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Sette&type=wine">6. Sette</a></li>
						           
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Wine</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Barrique Reserve Siraz&type=wine">7. Barrique Reserve Siraz</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Seagrama Nine Hills&type=wine">8. Seagram'a Nine Hills</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Dindori Reserve Shiraz&type=wine">9. Dindori Reserve Shiraz</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Fratelli Sangiovese Bianco&type=wine">10. Fratelli Sangiovese Bianco</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
                           <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Vodka <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Vodka</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Grey Goose&type=vodka">1. Grey Goose</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Absolut&type=vodka">2. Absolut</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Belvedere&type=vodka">3. Belvedere</a></li>
						            
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Vodka</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Smirnoff&type=vodka">4. Smirnoff</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Wodka Gorbatschow&type=vodka">5. Wodka Gorbatschow</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Eristoff&type=vodka">6. Eristoff</a></li>
						            
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>Vodka</h6>
						            <li><a href="CommonCustomerServlet?action=search&product=Vladivar&type=vodka">7. Vladivar</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Romanov&type=vodka">8. Romanov</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=White Mischief&type=vodka">9. White Mischief</a></li>
						            <li><a href="CommonCustomerServlet?action=search&product=Magic Moment&type=vodka">10. Magic Moment</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
					<li><a href="contact.html">CONTACT</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
	</div>
		</div>
		<!-- content-section-starts -->
	<div class="container">
	   <div class="products-page">
			<div class="products">
				<div class="product-listy">
					<h2>our Products</h2>
					<ul class="product-list">
						<li><a href="">Beer</a></li>
						<li><a href="">Brandy</a></li>
						<li><a href="">Rum</a></li>
						<li><a href="">Whisky</a></li>
						<li><a href="">Wine</a></li>
						<li><a href="#">Vodka</a></li>
						<li><a href="register.html">Register</a></li>
					</ul>
				</div>
				<div class="latest-bis">
					<img src="images/l4.jpg" class="img-responsive" alt="" />
					<div class="offer">
						<p>40%</p>
						<small>Top Offer</small>
					</div>
				</div> 	
				<div class="tags">
				    	<h4 class="tag_head">Tags Widget</h4>
				         <ul class="tags_links">
							<li><a href="CommonCustomerServlet?action=search&product=Kingfisher&type=beer">Kingfisher</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Carlsberg&type=beer">Carlsberg</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Tuborg&type=beer">Tuborg</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Royal Challenge&type=beer">Royal Challenge</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=McDowells&type=rum">Mc Dowell's</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Old Monk&type=rum">Old Monk</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Bacardi&type=rum">Bacardi</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Sette&type=wine">Sette</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Rasa Shiraz&type=wine">Rasa Shiraz</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Chene Grand Reserve&type=wine">Chene Grand Reserve</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Grey Goose&type=vodka">Grey Goose</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Smirnoff&type=vodka">Smirnoff</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Absolut&type=vodka">Absolut</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Romanov&type=vodka">Romanov</a></li>
							<li><a href="CommonCustomerServlet?action=search&product=Magic Moment&type=vodka">Magic Moment</a></li>
					       
						</ul>
					
				     </div>

			</div>
               <%
               String user=(String)session.getAttribute("user");
               ResultSet rs=(ResultSet)session.getAttribute("result");
                                if(rs.next())
                                {
                                   %>
			<div class="new-product">
				<div class="col-md-5 zoom-grid">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="<%=rs.getString(3)%>">
								<div class="thumb-image"> <img src="<%=rs.getString(3)%>" data-imagezoom="true" class="img-responsive" alt="" /> </div>
							</li>
							<li data-thumb="<%=rs.getString(4)%>">
								<div class="thumb-image"> <img src="<%=rs.getString(4)%>" data-imagezoom="true" class="img-responsive" alt="" /> </div>
							</li>
							<li data-thumb="<%=rs.getString(5)%>">
							<div class="thumb-image"> <img src="<%=rs.getString(5)%>" data-imagezoom="true" class="img-responsive" alt="" /> </div>
							</li> 
						</ul>
					</div>
				</div>
				<div class="col-md-7 dress-info">
					<div class="dress-name">
						<h3><%=rs.getString(2)%></h3>
						<span>&#8377;<%=rs.getString(6)%></span>
						<div class="clearfix"></div>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p>
					</div>
					<div class="span span1">
						<p class="left">ORIGIN</p>
						<p class="right"><%=rs.getString(7)%></p>
						<div class="clearfix"></div>
					</div>
					<div class="span span2">
						<p class="left">MADE IN</p>
						<p class="right"><%=rs.getString(8)%></p>
						<div class="clearfix"></div>
					</div>
					<div class="span span3">
						<p class="left">COLOR</p>
						<p class="right"><%=rs.getString(9)%></p>
						<div class="clearfix"></div>
					</div>
					<div class="span span4">
						<p class="left">Quantity</p>
						<p class="right"><span class="selection-box"><select class="domains valid" name="domains">
										   <option>60 ml</option>
										   <option>90 ml</option>
										   <option>250 ml</option>
										   <option>500 ml</option>
										   <option>750 ml</option>
                                                                                    <option>1000 ml</option>
									   </select></span></p>
						<div class="clearfix"></div>
					</div>
					<div class="purchase">
						<a href="CommonCustomerServlet?action=addtocart&pid=<%=rs.getString(1)%>&uid=<%=user%>&price=<%=rs.getString(6)%>">Add to Cart</a>
						<div class="social-icons">
							<ul>
								<li><a class="facebook1" href="#"></a></li>
								<li><a class="twitter1" href="#"></a></li>
								<li><a class="googleplus1" href="#"></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				<script src="js/imagezoom.js"></script>
					<!-- FlexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
					</script>
				</div>
				<div class="clearfix"></div>
					<div class="reviews-tabs">
      <!-- Main component for a primary marketing message or call to action -->
      <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
        <li class="test-class active"><a class="deco-none misc-class" href="#how-to"> More Information</a></li>
        <li class="test-class"><a href="#features">Specifications</a></li>
        <li class="test-class"><a class="deco-none" href="#source">Reviews (7)</a></li>
      </ul>

      <div class="tab-content responsive hidden-xs hidden-sm">
        <div class="tab-pane active" id="how-to">
		 <p class="tab-text">Maecenas mauris velit, consequat sit amet feugiat rit, elit vitaeert scelerisque elementum, turpis nisl accumsan ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. and scrambled it to make a type specimen book. It has survived Auction your website on Flippa and you'll get the best price from serious buyers, dedicated support and a much better deal than you'll find with any website broker. Sell your site today I need a twitter bootstrap 3.0 theme for the full-calendar plugin. it would be great if the theme includes the add event; remove event, show event details. this must be RESPONSIVE and works on mobile devices. Also, I've seen so many bootstrap themes that comes up with the fullcalendar plugin. However these . </p>    
        </div>
        <div class="tab-pane" id="features">
          <p class="tab-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis, ornare id lectus. Proin consectetur nibh quis urna gravida mollis.This tab has icon in consectetur adipiscing eliconse consectetur adipiscing elit. Vestibulum nibh urna, ctetur adipiscing elit. Vestibulum nibh urna, t.consectetur adipiscing elit. Vestibulum nibh urna,  Vestibulum nibh urna,it.</p>
		  <p class="tab-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
        <div class="tab-pane" id="source">
		  <div class="response">
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>MARCH 21, 2015</li>
									<li><a href="single.html">Reply</a></li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>MARCH 26, 2054</li>
									<li><a href="single.html">Reply</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>MAY 25, 2015</li>
									<li><a href="single.html">Reply</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>FEB 13, 2015</li>
									<li><a href="single.html">Reply</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>JAN 28, 2015</li>
									<li><a href="single.html">Reply</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>APR 18, 2015</li>
									<li><a href="single.html">Reply</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">Username</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>DEC 25, 2014</li>
									<li><a href="single.html">Reply</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
        </div>
      </div>		
	</div>

			</div>
                        <%
                         
                                }
        
               
                        %>
			<div class="clearfix"></div>
			</div>
   </div>
   <div class="other-products products-grid">
		<div class="container">
			<header>
				<h3 class="like text-center">Related Products</h3>   
			</header>
                    <%
                         
                     ResultSet rs2=(ResultSet)session.getAttribute("related");
                    
                    if(rs2.next())
                    {
                    %>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>"><img src=<%=rs2.getString(3)%> alt="" /></a>
						<div class="mask">
							<a href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>">Quick View</a>
						</div>
						<a class="product_name" href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>"><%=rs2.getString(2)%></a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price"><%=rs2.getString(6)%></span></a></p>
					</div>
                        <%}
                        if(rs2.next())
                    {%>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>"><img src=<%=rs2.getString(3)%> alt="" /></a>
						<div class="mask">
							<a href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>">Quick View</a>
						</div>
						<a class="product_name" href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>"><%=rs2.getString(2)%></a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price"><%=rs2.getString(6)%></span></a></p>
					</div>
                                        <%}
                        if(rs2.next())
                    {%>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>"><img src="<%=rs2.getString(3)%>" alt="" /></a>
						<div class="mask">
							<a href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>">Quick View</a>
						</div>
						<a class="product_name" href="CommonCustomerServlet?action=search&product=<%=rs2.getString(2)%>&type=<%=rs2.getString(10)%>"><%=rs2.getString(2)%></a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price"><%=rs2.getString(6)%></span></a></p>
					</div>
					<div class="clearfix"></div>
                                        <%
 
}
                                        %>
				   </div>
				   </div>
   <!-- content-section-ends -->
		<div class="news-letter">
			<div class="container">
				<div class="join">
					<h6>JOIN OUR MAILING LIST</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email Here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="footer">
		<div class="container">
		 <div class="footer_top">
			<div class="span_of_4">
				<div class="col-md-3 span1_of_4">
					<h4>Shop</h4>
					<ul class="f_nav">
						<li><a href="#">new arrivals</a></li>
						<li><a href="#">Beer</a></li>
						<li><a href="#">Whisky</a></li>
						<li><a href="#">Rum</a></li>
						<li><a href="#">Wine</a></li>
						<li><a href="#">Vodka</a></li>
						
					</ul>	
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>help</h4>
					<ul class="f_nav">
						<li><a href="#">frequently asked  questions</a></li>
						<li><a href="#">Beer</a></li>
						<li><a href="#">Whisky</a></li>
						<li><a href="#">Rum</a></li>
						<li><a href="#">Wine</a></li>
						<li><a href="#">Vodka</a></li>
					</ul>	
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>account</h4>
					<ul class="f_nav">
						<li><a href="account.html">login</a></li>
						<li><a href="register.html">create an account</a></li>
						<li><a href="#">create wishlist</a></li>
						<li><a href="checkout.jsp">my shopping bag</a></li>
						<li><a href="#">brands</a></li>
						<li><a href="#">create wishlist</a></li>
					</ul>				
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>popular</h4>
					<ul class="f_nav">
						<li><a href="#">new arrivals</a></li>
						<li><a href="#">Beer</a></li>
						<li><a href="#">Whisky</a></li>
						<li><a href="#">Rum</a></li>
						<li><a href="#">Wine</a></li>
						<li><a href="#">Vodka</a></li>
						<li><a href="#">login</a></li>
						<li><a href="#">brands</a></li>
					</ul>			
				</div>
				<div class="clearfix"></div>
				</div>
		  </div>
		  <div class="cards text-center">
				<img src="images/cards.jpg" alt="" />
		  </div>
		  <div class="copyright text-center">
				<p>© 2015 . All Rights Reserved | Design by   <a href="www.pinnacleinfotech.net.in">  Pinnacle Infotech</a></p>
		  </div>
		</div>
		</div>	
 <script src="js/responsive-tabs.js"></script>
    <script type="text/javascript">
      $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      ( function( $ ) {
          // Test for making sure event are maintained
          $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
          } );
          fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
      } )( jQuery );

    </script>

    </body>
</html>
