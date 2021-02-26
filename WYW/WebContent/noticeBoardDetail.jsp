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
	margin-top: 50px;
	margin-left: 100px;
	font-size: 28pt;
}

#tablediv {
	margin: 100px 300px;
}

#button {
	background-color: #FFFBC1;
	color: black;
	width: 120px;
	margin: 5px;
	float: right;
}
</style>
</head>
<body>
	<br>
	<div id="top">
		<p>공지사항</p>
	</div>

	<div id="tablediv">
		<table border="1">
			<tr>
				<th>NO</th>
				<td>${dto.seq }</td>
			</tr>
			<tr>
				<th>DATE</th>
				<td>${dto.regdate }</td>
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
					onclick="location.href='controller.do?command=list'" id="button">
					<input type="button" value="삭제"
					onclick="location.href='controller.do?command=delete&seq=${dto.seq}'"
					id="button"> <input type="button" value="수정"
					onclick="location.href='controller.do?command=updateform&seq=${dto.seq}'"
					id="button"></td>
			</tr>


		</table>
	</div>












</body>
</html>