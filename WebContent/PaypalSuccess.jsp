<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
 
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">


	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
<style>

.box {
 
  width: 1000px;
	height:150px;
  border-radius: 15px;
  color: black;
  font-weight: bold;
  border: none;
  text-align: center;
 margin:0 auto;
 margin-top:20%;
  background-color: rgba(222, 222, 222, 0.25);
  
}

.title{
	color:white;
	padding-top:15px;
	
}

.btn{
height:50px;

}
body {
    background-image: url("img/background.jpg"); !important
}
</style>
   
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


	<div class="container"> 
		<div class="box">
			<h1 class="title"> You have successfully signed up for the plan</h1>
			<div style="padding-top:15px;">
		<button type="button" onclick="window.location.href='index.jsp'"class="btn btn-primary">Back to Home</button>
		</div>
		</div>
	</div>
	
	
</body>
</html>