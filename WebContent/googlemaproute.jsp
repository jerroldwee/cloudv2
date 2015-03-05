<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Google Map Route</title>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>

</head>
<body>
<div id="map-canvas" style="width: 700px; height: 400px; position: relative; overflow: hidden; margin: 50px auto;"></div>
<script>
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;

function initialize() {
  directionsDisplay = new google.maps.DirectionsRenderer();
  var smu = new google.maps.LatLng(1.297404, 103.849370);
  var mapOptions = {
    zoom:17,
    center: smu
  };
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.setMap(map);
  var original = "1.297404,103.849370"
	  var destinationto = purl(window.location.href).param('latlng'); 
  var request = {
      origin: original,
      destination:destinationto,
      travelMode: google.maps.TravelMode.WALKING
  };
  directionsService.route(request, function(response, status) {
	    if (status == google.maps.DirectionsStatus.OK) {
	      directionsDisplay.setDirections(response);
	    }
	  });
}

function calcRoute() {

  var myLatlng = "1.296568,103.852119";
 var original = "1.297404,103.849370"
  var destinationto = purl(window.location.href).param('latlng'); 
  var request = {
      origin: original,
      destination:destinationto,
      travelMode: google.maps.TravelMode.WALKING
  };
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}

google.maps.event.addDomListener(window, 'load', initialize);


</script>
<script type="text/javascript" src="javascript/purl.js"></script>
</body>
</html>