<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	margin-top: 50px;
	margin-left: 100px;
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
</style>
</head>

<body>
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
			<!-- 반복문 통해서 공지사항 내용 뿌려주기 -->
			<!--	<c:choose>
	  <c:when test="${empty dto }">
		 <tr>
		 	<td colspan="3">-작성된 글이 존재하지 않습니다.</td>
		 </tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="dto" items="{list}">
				<tr>
					<td>
					
					</td>
					<td><a href="글 내용 보는 컨트롤러.do&공지글 번호?">${dto.title }</a></td>
					<td>${dto.regdate}></td>
				</tr>
			</c:forEach>
		</c:otherwise>
	
	</c:choose>
	 -->
			<tr>
				<td colspan="3" align="right"><input type="button" value="글쓰기"
					onclick="" style="background-color: #FFFBC1; color: black;"></td>
			</tr>
		</table>
	</div>
</body>
</html>