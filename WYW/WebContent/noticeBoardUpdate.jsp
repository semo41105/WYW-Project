<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정하기</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/main.js"></script>
<style type="text/css">
#top>p {
	margin-top: 50px;
	margin-left: 100px;
	font-size: 28pt;
}

#button {
	background-color: #FFFBC1;
	color: black;
	width: 120px;
	margin: 5px;
	float: right;
}

body>form {
	margin: 100px 300px;
}

#s0 {
	float: left;
	width: 34%
}

#s1 {
	float: left;
	width: 33%;
	padding: 25px 0px 25px 0px
}

#s2 {
	float: left;
	width: 100%
}

#s4 {
	padding: 8px 0px 0px 0px;
	margin-left: 25px;
}

#ask1 {
	border: 2px solid black;
	background-color: #fffbc1;
	font-weight: bold;
	color: #3f385a;
}
</style>
</head>
<body>
	<header>
		<div id="s0">
			<a href="#"> <img alt="WYW_날씨를 입다" src="images/logo/logo_wyw_yellow.png"
				width="200" height="100">
			</a>
		</div>
		<div id="s1">
			<input type="text">
		</div>
		<div id="s1">
			<input id="ask1" type="button" value="검색" onclick=""> <a
				href="#" class="label"> <img id="s4" class="icons"
				src="images/icon/setting.png" alt="setting" align="right"
				width="30px"> <img id="s4" class="icons"
				src="images/icon/user.png" alt="user" align="right" width="30px">
				<img id="s4" class="icons" src="images/icon/up.png" alt="upload"
				align="right" width="30px">
			</a>
		</div>
	</header>
	<div id="top">
		<p>공지사항</p>
	</div>
	<form action="manager.do" method="post">
		<input type="hidden" name="command" value="noticeupdate"> <input
			type="hidden" name="boardno" value="${dto.boardno }">
		<table border="1">
			<tr>
				<th>DATE</th>
				<td>${dto.regdate }</td>
			</tr>
			<tr>
				<th>TITLE</th>
				<td><input type="text" name="title" value="${dto.title }"></td>
			</tr>
			<tr>
				<th>CONTENT</th>
				<td><textarea rows="30" cols="40" name="content">${dto.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="취소" id="button"
					onclick="location.href='manager.do?command=noticedetail&boardno=${dto.boardno }'">
					<input type="submit" value="수정" id="button"></td>
			</tr>
		</table>

	</form>
</body>
</html>