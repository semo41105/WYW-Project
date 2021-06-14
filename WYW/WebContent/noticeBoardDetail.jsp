<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시글 보기</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/main.js"></script>
<style type="text/css">
#top>p {
	margin-left: 50px;
	margin-bottom: 0px;
	font-size: 28pt;
}

#button {
	background-color: #FFFBC1;
	color: black;
	width: 120px;
	margin: 5px;
	float: right;
}

#s0 {
	float: left;
	width: 34%
}

#s1 {
	float: left;
	width: 33%;
	padding: 25px 0px 25px 0px;
}

#s2 {
	float: left;
	width: 100%;
	height: 50px;
}

#s4 {
	padding: 8px 0px 0px 0px;
	margin-left: 25px;
}

</style>
</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<header>
			<div id="s0">
				<img alt="WYW_날씨를 입다" src="images/logo/logo_wyw_yellow.png"
					width="200" height="100"
					onclick="location.href='mainController.do?command=mainpage'">
			</div>
			<div id="s1"></div>
			<div id="s1">
				<img id="s4" class="icons" src="images/icon/setting.png" alt="setting" align="right" width="30px" onclick="location.href='setting.do?command=UserInfoForm'">
				<img id="s4" class="icons" src="images/icon/user.png" alt="user" align="right" width="30px" onclick="location.href='mainController.do?command=mypage'">
				<img id="s4" class="icons" src="images/icon/up.png" alt="upload" align="right" width="30px" onclick="location.href='mainController.do?command=StoryPage'">
				<img id="s4" class="icons" src="images/icon/search.png" alt="search" align="right" width="30px" onclick="location.href='mypageController.do?command=searchpage'">
			</div>

			<div id="s2"></div>
			<!-- 위쪽 div 와 아래쪽 div를 나누는 용도 -->
		</header>
		<section id="topsection">
			<div id="top">
				<p>공지사항</p>
				<br>
			</div>
		</section>
		<section id="main">
			<div id="tablediv">
				<table border="1">
					<tr>
						<th>DATE</th>
						<td>${dto.regdate }</td>
					</tr>
					<tr>
						<th>WRITER</th>
						<td>${dto.username }</td>
					</tr>
					<tr>
						<th>TITLE</th>
						<td>${dto.title }</td>
					</tr>
					<tr>
						<th>CONTENT</th>
						<td><textarea rows="20" cols="35" readonly="readonly">${dto.content }</textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="목록"
							onclick="location.href='manager.do?command=noticelist'"
							id="button"> <input type="button" value="삭제"
							onclick="location.href='manager.do?command=noticedelete&boardno=${dto.boardno}'"
							id="button"> <input type="button" value="수정"
							onclick="location.href='manager.do?command=noticeupdateform&boardno=${dto.boardno}'"
							id="button"></td>
					</tr>


				</table>
			</div>







		</section>
		<footer id="footer">
			<p>
				&copy; Untitled. All rights reserved. Design: <a
					href="http://templated.co">TEMPLATED</a>. Demo Images: <a
					href="http://unsplash.com">Unsplash</a>.
			</p>
		</footer>


	</div>
</body>
</html>