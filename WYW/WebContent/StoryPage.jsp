<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<title>StoryPage</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<!-- Style -->
		<style type="text/css">
			#s0{ float: left; width: 34% }
			#s1{ float: left; width: 33%; padding: 25px 0px 25px 0px }
			#s2{ float: left; width: 100% }
			#s4{ padding: 8px 0px 0px 0px }
			#s6{ float: left; }
			#ask1{ 
				border: 2px solid black;
				background-color: #fffbc1; 
				font-weight: bold; 
				color: #3f385a;
			}
			a{ text-decoration: none }
			.avatacon {
			    width: 30px; 
			    height: 30px;
			    object-fit: cover;
			    object-position: top;
			    border-radius: 50%;
			}
		</style>
	<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.poptrox.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/main.js"></script>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header>
						<div id="s0">
							<a href="#">
								<img alt="WYW_날씨를 입다" src="images/logo/logo_wyw_yellow.png" width="200" height="100"/>
							</a>
						</div>
						<div id="s1"><input type="text"></div>
						<div id="s1">
							<input id="ask1" type="button" value="검색" onclick="">
							<a href="#" class="label">
								<img id="s4" class="icons" src="images/icon/setting.png" alt="setting" align="right" width="30px">
								<img id="s4" class="icons" src="images/icon/user.png" alt="user" align="right" width="30px">
								<img id="s4" class="icons" src="images/icon/home.png" alt="home" align="right" width="30px">
							</a>
						</div>
						<div id="s2"></div><!-- 위쪽 div 와 아래쪽 div를 나누는 용도 -->
					</header>

				<!-- Main -->
					<section>
							<div style="position: absolute;">
								<div style="position: relative;top: 110px; left: 280px;">
									<a href="#">
								    	<img class="avatacon" src="images/avatar.jpg">
								    	<strong>&nbsp;&nbsp;userID</strong>
							    	</a>
								</div>
								<div style="position: relative;top: 75px; left: 585px;">
									<a href="#">
										<img alt="menu" src="images/icon/menu.png" width="30px">
									</a>
								</div>
							</div>
						    <div id="header">
						    	<img alt="img" src="images/thumbs/05.jpg"/>
						    </div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<p>&copy; Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
					</footer>

			</div>

	</body>
</html>