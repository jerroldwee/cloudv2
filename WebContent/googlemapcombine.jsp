<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stores Near You</title>
 <link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
 

    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
   
</head>
<body>

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
		
		<section class="search" style="height: 60px;">
		<div class="wrapper" style='color: rgb(255, 255, 255); font-family: "lato-regular",Helvetica,Arial,sans-serif; font-size: 20px; text-transform: uppercase; letter-spacing: 1px; line-height: 22px; text-align: center;'>
			
			<p style="position: relative; top: 20px;">Location Service</p>
			
			
		</div>
		</section>
<div class="container">
<h1 style="text-align: center;">Current location</h1>
<p style="text-align: center;">*its noted that there might be people doing feedback from other countries, this is just to show googlemaps capabilities</p>
 <div id="map-currentLocation" style="width: 700px; height: 400px; position: relative; overflow: hidden; margin: 50px auto;"></div>
<h1 style="text-align: center;">Location of discounted products near you</h1> 

<div id="map-foodlocation" style="width: 700px; height: 400px; position: relative; overflow: hidden; margin: 50px auto;"></div>
<section id="wrapper">
Click the allow button to let the browser find your location.

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  
     <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script>
function success(position) {



  var coords = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
  
  var options = {
    zoom: 15,
    center: coords,
    mapTypeControl: false,
    navigationControlOptions: {
    	style: google.maps.NavigationControlStyle.SMALL
    },
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map-currentLocation"), options);

  var marker = new google.maps.Marker({
      position: coords,
      map: map,
      title:"You are here!"
  });
}

if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(success);
} else {
  error('Geo Location is not supported');
}


</script>

    <script>
// This example displays a marker at the center of Australia.
// When the user clicks the marker, an info window opens.

function initialize() {
  var myLatlng = new google.maps.LatLng(1.296568,103.852119);
  
  var mapOptions = {
    zoom: 14,
    center: myLatlng
  };

  var map = new google.maps.Map(document.getElementById('map-foodlocation'), mapOptions);
  var myLatlng2 = new google.maps.LatLng(1.293240000000000000,103.852218999999990000);
  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      
      '<h1 id="firstHeading" class="firstHeading">BreadTalk</h1>'+
      '<div id="bodyContent">'+
      '<p><b>Breadtalk</b> is having a 50% discount on all their frenchloaf at 8pm! Grab it while it last!</p>'+
      '</div>'+
      '</div>';

      var contentString2 = '<div id="content2">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">BreadTalk/h1>'+
      '<div id="bodyContent">'+
      '<p><b>Breadtalk/b> is having a 50% discount on all their frenchloaf at 8pm! Grab it while it last!</p>'+
      '</div>'+
      '</div>';

  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });

  var infowindow2 = new google.maps.InfoWindow({
      content: contentString2
  });

  var breadicon = {
		    url: "img/bread.png", // url
		    scaledSize: new google.maps.Size(40, 40), // scaled size
		    origin: new google.maps.Point(0,0), // origin
		    anchor: new google.maps.Point(0, 0) // anchor
		};

  var cakeicon = {
		    url: "img/cake.png", // url
		    scaledSize: new google.maps.Size(40, 40), // scaled size
		    origin: new google.maps.Point(0,0), // origin
		    anchor: new google.maps.Point(0, 0) // anchor
		};
  

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Breadtalk (City Hall Branch)',
          icon:breadicon
  });


  var marker2 = new google.maps.Marker({
      position: myLatlng2,
      map: map,
      title: '4 seasons (City Hall Branch)',
          icon:cakeicon
  });
  
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });

  google.maps.event.addListener(marker2, 'click', function() {
	    infowindow2.open(map,marker2);
	  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
</section>
</div>
</body>
</html>