<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Liqour Mart</title>
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
		<!-- checkout -->
<div class="cart-items">
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.html" title="Go to Home Page">Home</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       Cart
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.html">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			 <h2>MY SHOPPING BAG </h2>
                         <%
                             String uid=(String)session.getAttribute("user");
                          try
            {
            Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquormart","root","root");
				String sql="select * from cart where u_id='"+uid+"'";
				PreparedStatement stmt=conn.prepareStatement(sql);
                                System.out.println(sql);
                                ResultSet rs=stmt.executeQuery();
                                int i=1;
                                while(rs.next())
                                {
                                     String sql2="select * from beer where p_id='"+rs.getString(3)+"'";
				PreparedStatement stmt2=conn.prepareStatement(sql2);
                                ResultSet rs2=stmt2.executeQuery();
                                if(rs2.next())
                                {
                         %>
		<div class="cart-gd">
				<script>$(document).ready(function(c) {
					$('.close<%=i%>').on('click', function(c){
						$('.cart-header<%=i%>').fadeOut('slow', function(c){
							$('.cart-header<%=i%>').remove();
						});
						});	  
					});
			   </script>
                          
			 <div class="cart-header">
				 <div class="close1"> </div>
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="<%=rs2.getString(3)%>" class="img-responsive" alt="">
						</div>
					   <div class="cart-item-info">
						<h3><a href="#"> <%=rs2.getString(2)%></a><span>Pickup time:</span></h3>
						<ul class="qty">
                                                    <li><p>Quantity : <input type="text" name="<%=rs2.getString(2)%>"></p></li>
							<li><p>FREE delivery</p></li>
						</ul>
							 <div class="delivery">
							 <p>Price : <%=rs2.getString(6)%></p>
							 <span>Delivered in 1-1:30 hours</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
											
				  </div>
			 </div>
                          
			 
			 
			<%
                            }
                            i++;
               }      
            }
                          catch(Exception e)
                          {
                          System.out.println(e);
                          }
%>  
		</div>
	</div>
</div>

<!-- //checkout -->	
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
						<li><a href="checkout.html">my shopping bag</a></li>
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
</body>
</html>