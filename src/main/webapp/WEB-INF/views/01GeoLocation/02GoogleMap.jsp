<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!--JSTL -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01GeoLocation</title>

<!--jquery와 부트스트랩을위한 CDN 추가함 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<style>
#map{widows: 800px;height: 600px;}
</style>
<body>
<div class="container">
	<br /> <a href="../" class="btn-sm btn-dark">home</a>
	<h2>Google Map</h2>
	<div id="map"></div>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_oINClGAUn_KoQiJV0azTlmR7zR9tltM"></script>
</div>
</body>
<script type="text/javascript">
//구글maps 의 JS 용 api key
//AIzaSyB_oINClGAUn_KoQiJV0azTlmR7zR9tltM
function initMap(){
	var uluru = { lat:37.4730835999999 , lng:126.8788276 };
	var map = new google.maps.Map(document.getElementById('map'),{
		zoom:17,
		center:uluru
	});
	var marker = new google.maps.Marker({
		position: uluru,
		map : map
	});
}
window.onload = function(){
	initMap();
}
</script>
</html>



















