<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메인 페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mainPage.css">
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function(){
		getJson();
	});
	
	function getJson(){
		$.getJSON('http://api.openweathermap.org/data/2.5/forecast?id=1835848&appid=d3689315a68c7fb612f372f174579300&units=metric',
				function(data){
			var nowTemp = data.list[3].main.temp;
			var maxTemp = data.list[4].main.temp_max;
			var minTemp = data.list[0].main.temp_min;
			
			$('.nowtemp').append(nowTemp);
			$('.maxtemp').append(maxTemp);
			$('.mintemp').append(minTemp);
		});
	}
	$(function(){
		getLocation();
	});
	function getLocation() {
		  if (navigator.geolocation) { // GPS를 지원하면
		    navigator.geolocation.getCurrentPosition(function(position) {
		      $('.nowloc').append(position.coords.latitude + ' ' + position.coords.longitude);
		    }, function(error) {
		      console.error(error);
		    }, {
		      enableHighAccuracy: false,
		      maximumAge: 0,
		      timeout: Infinity
		    });
		  } else {
		    alert('GPS를 지원하지 않습니다');
		  }
		}
		
</script>
</head>
<body>
	<header>
		<h2>상단 배너 및 메뉴</h2>
	</header>

	<div class="main">
		<h2>메인</h2>
		<div class="weather">
			<div class="left">
				<div class="nowloc">현재 위치 : </div><br>
				<div class="nowtemp">현재 온도 : </div><br>
				<div class="maxtemp">최고 기온 : </div><br>
				<div class="mintemp">최저 기온 : </div>
			</div>
			<div class="right"></div>
		</div>

		<div class="recommend">
			<div class="circle" id="one"></div>
			<div class="circle" id="two"></div>
			<div class="circle" id="three"></div>
		</div>

		<div class="follower"></div>
	</div>

	<footer>
		<h2>하단 메뉴</h2>
	</footer>

</body>
</html>