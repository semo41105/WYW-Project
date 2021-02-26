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
</style>
</head>
<body>
	<div id="top">
		<p>공지사항</p>
	</div>
	<form action="controller.do" method="post">
		<input type="hidden" name="command" value="noticeboardupdate">
		<input type="hidden" name="seq" value="${dto.seq }">
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
				<th>WRITER</th>
				<td>${dto.writer }</td>
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
					onclick="location.href='controller.do?command=dstail&seq=${dto.seq }'">
					<input type="submit" value="수정" id="button" onclick=""></td>
			</tr>
		</table>

	</form>
</body>
</html>