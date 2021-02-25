<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<title>메인페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	<!-- Scripts -->
		<script src="assets/js/location.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.poptrox.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header>
						<div><img alt="WYW_날씨를 입다" src="images/logo/logo_wyw_yellowChange.png" width="200" height="100"/></div>
					</header>

				<!-- Main -->
					<section id="main">
							<div class="main"><br>
								<h2>현재 날씨 및 추천 옷차림</h2>
								<div class="weather">
									<div class="left">
										<p class="nowloc">현재 위치 : </p>
										<p class="nowtemp">현재 온도 : </p>
										<p class="maxtemp">최고 기온 : </p>
										<p class="mintemp">최저 기온 : </p>
									</div>
									<div class="right"><span>기온별 옷차림 이미지 삽입</span></div>
								</div>
						
								<div class="recommend">
									<div class="circle" id="one"></div>
									<div class="circle" id="two"><span>사진삽입 / 클릭시 해당 페이지로</span></div>
									<div class="circle" id="three"></div>
								</div>
						
								<div class="follower">
									<span>스토리 세로 배치 / 클릭 시 해당 페이지로</span>
								</div>
							</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<p>&copy; Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
					</footer>

			</div>

	</body>
</html>