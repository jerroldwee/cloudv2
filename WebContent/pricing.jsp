<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pricing plans</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</head>
<section class="hero2 " >
		<header style="background: none repeat scroll 0% 0% rgb(44, 62, 80);">
			<div class="wrapper">
				<nav>
					<ul>
							<li><a href="dashBoard">Dashboard</a></li>
							<li><a href="pricing.jsp">Pricing Plans</a></li>
							<li><a href="googlemapcombine.jsp">Stores Near You</a></li>
							<li><a href="Hiring.jsp">We are Hiring!</a></li>
							<li><a href="feedback.jsp">FeedBack</a></li>
					</ul>
					<a href="Login.jsp" class="login_btn">Login</a>
				</nav>
			</div>
		</header>
		</section>
	
<body>


			
<div id="container">
	<div class="whole">
	<div class="type">
		<p>Basic</p>
		</div>
	<div class="plan">

		<div class="header">
			<span>$</span>0<sup>00</sup>
			<p class="month">per month</p>
		</div>
		<div class="content">
			<ul>
				<li>Max number of stores: 15</li>
				<li>Upscaling Cost per Store (above 1) : 0</li>
				<li>Reach: 20m</li>
				<li>Selling Window: 1 Fixed Hour</li>
				<li>Sales Option: Customer Pays in Store</li>
				<li>Additional Bonus: - </li>
			</ul>

		</div>

		<div class="price">
		
		<form id="form1" action="paypal" method="get">
    <a href="javascript:;"  class="bottom" onclick="document.getElementById('form1').submit();"><p class="cart">Get the plan now!</p></a>
   
</form>
    
		</div>
	</div>
</div>
	<div class="whole">
		<div class="type standard">
		<p>Premium</p>
		</div>
	<div class="plan">

		<div class="header">
			<span>$</span>9<sup>99</sup>
			<p class="month">per month</p>
		</div>
		<div class="content">
			<ul>
				<li>Max number of stores: 5</li>
				<li>Upscaling Cost per Store (above 1) : 10.00 SGD/Month</li>
				<li>Reach: 100m</li>
				<li>Selling Window: 1 flexible hour for each store</li>
				<li>Sales Option: Customer Pays in Store</li>
				<li>Additional Bonus: Additional Facebook promotion</li>
			</ul>
		</div>
		<div class="price">
			<form id="form1" action="paypal" method="get">
    <a href="javascript:;"  class="bottom" onclick="document.getElementById('form1').submit();"><p class="cart">Get the plan now!</p></a>
   
</form>
		</div>
	</div>
</div>

	<div class="whole ">
		<div class="type ultimate">
		<p>Ultimate</p>
		</div>
	<div class="plan">

		<div class="header">
			<span>$</span>199<sup>99</sup>
			<p class="month">per month</p>
		</div>
		<div class="content">
			<ul>
				<li>Max number of stores: Unlimited</li>
				<li>Upscaling Cost per Store (above 1) : 20.00 SGD/Month</li>
				<li>Reach: Unlimited</li>
				<li>Selling Window: Unlimited Flexibility</li>
				<li>Sales Option: Customer Pays in Store or via PayPal</li>
				<li>Additional Bonus: Facebook promotions and Customer Support</li>
			</ul>
		</div>
		<div class="price">
     <form id="form1" action="paypal" method="get">
    <a href="javascript:;"  class="bottom" onclick="document.getElementById('form1').submit();"><p class="cart">Get the plan now!</p></a>
   
</form>
		</div>
	</div>
</div>

   

</div>
</body>
</html>