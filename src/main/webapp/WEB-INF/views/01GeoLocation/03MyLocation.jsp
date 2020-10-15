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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<style>
#map {
	width: 100%;
	height: 600px;
}
</style>
<body>
	<div class="container">
		<br /> <a href="../" class="btn-sm btn-dark">home</a>
		<h2>현재위치를 지도에 표시하기</h2>
		<fieldset>
			<legend>현재위치:위도 및 경도</legend>
			<span id="result" style="color: red; font-size: 1.5em; font-weight: bold;">test</span>
		</fieldset>
		<div id="map"></div>
		<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_oINClGAUn_KoQiJV0azTlmR7zR9tltM"></script>
	</div>
</body>
<script type="text/javascript">
	//나의 구글maps 의 JS 용 api key
	//AIzaSyB_oINClGAUn_KoQiJV0azTlmR7zR9tltM

	var span;
	window.onload = function() {
		span = document.getElementById("result");

		if (navigator.geolocation) {
			span.innerHTML = "Geolocation API를 지원합니다";
			var options = {
				enableHighAccurcy : true,
				timeout : 5000,
				maximumAge : 3000
			};
			navigator.geolocation.getCurrentPosition(
					showPosition, showError, options);
		} else {
			span.innerHTML = "이 브라우저는 Geolocation API를 지원하지 않습니다.";
		}
	}
	var showPosition = function(position) {
		//위도를 가져오는 부분
		var latitude = position.coords.latitude;
		//경도를 가져옴
		var longitude = position.coords.longitude;
		span.innerHTML = "위도:" + latitude + ", 경도:" + longitude;

		//가져온 위도, 경도를 지도에 표시
		initMap(latitude, longitude);
	}

	function initMap(latVar, lngVar) {
		var uluru = {
			lat : latVar,
			lng : lngVar
		};
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 17,
			center : uluru
		});
		var marker = new google.maps.Marker({
			position : uluru,
			map : map
		});
	}

	var showError = function(error) {
		switch (error.code) {
		case error.UNKNOWN_ERROR:
			span.innerHTML = "할수없는 오류발생";
			break;
		case error.PERMISSION_DENIED:
			span.innerHTML = "권한이 없습니다";
			break;
		case error.POSITION_UNAVAILABLE:
			span.innerHTML = "위치 확인불가";
			break;
		case error.TIME_OUT:
			span.innerHTML = "시간초과";
			break;
		}
	}
</script>
</html>



















