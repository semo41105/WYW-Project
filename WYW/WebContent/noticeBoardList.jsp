<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="com.mvc.dto.UserDataDto"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/main.js"></script>
<style type="text/css">
#top>p {
	margin-top: 100px;
	margin-left: 50px;
	margin-bottom: 0px;
	font-size: 28pt;
}

body>table {
	margin: 100px 300px;
}

#noticeBoard {
	margin-left: 200px;
	margin-right: 200px;
	margin-top: 100px;
}

tr>th {
	text-align: center;
	font-size: 16pt;
}

table {
	text-align: center;
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

#s3 {
	float: left;
	width: 30%;
	padding: 0px 0px 0px 10px
}

#s4 {
	padding: 8px 0px 0px 0px
}

#s5 {
	float: left;
	width: 70%;
	padding: 6px 0px 0px 0px
}

#s6 {
	float: left;
}

#ask1 {
	border: 2px solid black;
	background-color: #fffbc1;
	font-weight: bold;
	color: #3f385a;
}

#dd {
	float: left;
}
</style>
</head>

<body>
	<header>
		<div id="s0">
			<a href="#"> <img alt="WYW_날씨를 입다"
				src="images/logo/logo_wyw_yellow_yellow.png" width="200" height="100" />
			</a>
		</div>
		<div id="s1">
			<input type="text">
		</div>
		<div id="s1">
			<input id="ask1" type="button" value="검색" onclick=""> <a
				href="#" class="label"> <img id="s4" class="icons"
				src="images/icon/set.png" alt="setting" align="right" width="30px" />
			</a>
		</div>
		<div id="s2"></div>
		<!-- 위쪽 div 와 아래쪽 div를 나누는 용도 -->
		<div id="s2"></div>
		<!-- 위쪽 div 와 아래쪽 div를 나누는 용도 -->
	</header>
	<br>
	<div id="top">
		<p>공지사항</p>
	</div>
	<div id="noticeBoard">
		<table border="1" style="padding: auto; text-align: center;">
			<colgroup>
				<col width="100">
				<col width="500">
				<col width="150">
			</colgroup>

			<thead>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>DATE</th>
				</tr>
			</thead>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="3">--작성된 글이 존재하지 않습니다.--</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="dto" items="${list}" varStatus="status">
						<tr>
							<td>${fn:length(list)-status.index}</td>
							<td><a
								href="manager.do?command=noticedetail&boardno=${dto.boardno}">${dto.title }</a></td>
							<td>${dto.regdate}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="3" align="right"><input type="button" value="글쓰기"
					onclick="location.href='manager.do?command=noticewrite' "
					style="background-color: #FFFBC1; color: black;"></td>
			</tr>
		</table>
	</div>
	<footer id="footer">
		<p>
			&copy; Untitled. All rights reserved. Design: <a
				href="http://templated.co">TEMPLATED</a>. Demo Images: <a
				href="http://unsplash.com">Unsplash</a>.
		</p>
	</footer>
</body>
</html>