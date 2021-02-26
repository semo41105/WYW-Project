<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="assets/css/main.css" />
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/main.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e) {

			if ("#findtextbox" == null) {
				alert("찾을 내용을 입력하세요.");
				return false;
			}

		});

	});
</script>

<style type="text/css">
#top>p {
	margin-top: 50px;
	margin-left: 100px;
	font-size: 28pt;
}

option {
	color: #000000;
}

#middle {
	float: left;
}

.space {
	width: 30%;
}
</style>
</head>

<body>
	<br>
	<div id="top">
		<p>회원 목록</p>
	</div>
	<br>
	<form action="" method="post">
		<div id="middle" class="space">&nbsp;</div>
		<div id="middle" style="width: 9%;">
			<select name="searchType">
				<option value="id" selected>아이디</option>
				<option value="name">이름</option>
				<option value="address">주소</option>
				<option value="email">이메일</option>
				<option value="userPhone">연락처</option>
				<option value="userEnabled">가입여부</option>
				<option value="userRole">등급</option>
			</select>

		</div>
		<div id="middle" style="width: 21%; padding: 0px 5px;">
			<input type="text" id="findtextbox">
		</div>
		<div id="middle" style="width: 10%;">
			<input type="submit" id="button" value="검색"
				style="background-color: #FFFBC1; color: black; width: 120px;">
		</div>
		<div id="middle" class="space">&nbsp;</div>

	</form>
	<br>
	<hr>
	<br>
	<!-- 검색 버튼 누르면 내용 받아와서 테이블 형식으로 뿌리기 -->
	<!-- 가입여부는 'y'-가입,'n'-탈퇴-->
	<!-- 관리 부분에 있는 수정, 탈퇴버튼을 누르면 회원 번호?랑 같이 페이지로 넘어가게 하기 -->


</body>
</html>