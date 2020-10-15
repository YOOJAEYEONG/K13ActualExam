<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>


	<button onclick="location.href='GeoLocation/01GeoLocation.do'">1. 내 위치값 알아내기</button>
	<button onclick="location.href='GeoLocation/02GoogleMap.do'">2. 구글맵 연동</button>
	<button onclick="location.href='GeoLocation/03MyLocation.do'">3. 현재위치를 지도에 표시하기</button>
	<button onclick="location.href='GeoLocation/04SearchRadius.do'">4. 위치를 기반으로 시설물에 대한 반경 검색</button>
</body>
</html>
