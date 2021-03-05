<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>    
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<title>MyPage</title>
<Style type="text/css">
	#s0{ float: left; width: 34% }
	#s1{ float: left; width: 33%; padding: 25px 0px 25px 0px; }
	#s2{ float: left; width: 100%; height: 50px;}
	#s4{ padding: 8px 0px 0px 0px;
		 margin-left: 25px;
		}			
	#ask1{ 
		border: 2px solid black;
		background-color: #fffbc1; 
		font-weight: bold; 
		color: #3f385a;
		}
	#pf1{ float: left; width: 30%; padding: 0px 0px 0px 100px; }	
	#pf2{ float: left; position:absoulte; width: 70%;
		  transform: translate(0px, 50px);
		  font-size: 20pt;
		}
	#userid{float: left;
			margin-left: 150px;
		}
	#pf3{float:left; position:absoulte; width: 70%;
     	 transform: translate(0px, 85px);
     	 font-size: 20pt;
		}
	#pf999{border-bottom: 1px dotted;
		   transform: translate(0px, 130px);
		}
	#post{float: left; margin-left: 80px;}
	#follower{float:left; margin-left: 80px;}
	#following{float:left; margin-left:80px;}	
/*main*/		
	.thumbnails {margin-top: 100px;}		
</Style>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
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
				<a>
					<img alt="WYW_날씨를 입다" src="images/logo/logo_wyw.png" width="200" height="100" onclick="location.href='mainController.do?command=mainpage'">
				</a>
			</div>
			<div id="s1"><input type="text"></div>
				<div id="s1">
					<input id="ask1" type="button" value="검색" onclick="">
						<a href="#" class="label">
							<img id="s4" class="icons" src="images/icon/setting.png" alt="setting" align="right" width="30px">
							<img id="s4" class="icons" src="images/icon/user.png" alt="user" align="right" width="30px">
							<img id="s4" class="icons" src="images/icon/up.png" alt="upload" align="right" width="30px">
						</a>
				</div>
				
			<!-- userprofile -->
			<div id="s2"></div><!-- 위쪽 div 와 아래쪽 div를 나누는 용도 -->
				<div id="header">
					<div id="pf1">
						<span id="userimg" class="avatar"><img src="images/avatar.jpg" alt="" /></span>
					</div>
					<div id="pf2">
						<span id="userid">UserId</span>
						<img src="images/icon/map.png" width="26px">
						<span>&nbsp;&nbsp;Set Location</span>			
					</div>
					<div id="pf3">
						<div id="post">
							<span><b>45</b></span>
							<span>&nbsp;&nbsp;Posts</span>
						</div>
						<div id="follower">
							<span><b>100&nbsp;&nbsp;</b></span>					
							<a href="">Followers</a>
						</div>
						<div id="following">
							<span><b>17&nbsp;&nbsp;</b></span>				
							<a href="">Following</a>
						</div>
					</div>
				</div>
			<div id="s2"></div><!-- 위쪽 div 와 아래쪽 div를 나누는 용도 -->
</header>

	<div id="pf999">&nbsp;</div>

		
<!-- Main -->
	<section id="main">
	
	</section>
<!-- Thumbnails -->
	<section class="thumbnails">
	
					<div>
						<a href="images/fulls/01.jpg">
							<img src="images/thumbs/01.jpg" alt="" />
						</a>
						<a href="images/fulls/01.jpg">
							<img src="images/thumbs/01.jpg" alt="" />
						</a>
					</div>
					<div>
						<a href="images/fulls/01.jpg">
							<img src="images/thumbs/01.jpg" alt="" />
						</a>
						<a href="images/fulls/01.jpg">
							<img src="images/thumbs/01.jpg" alt="" />
						</a>
					</div>
					<div>
						<a href="images/fulls/01.jpg">
							<img src="images/thumbs/01.jpg" alt="" />
						</a>
						<a href="images/fulls/01.jpg">
							<img src="images/thumbs/01.jpg" alt="" />
						</a>
					</div>


	</section>

				<!-- Footer -->
					<footer id="footer">
						<p>&copy; Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
					</footer>

	</div>
</body>
</html>