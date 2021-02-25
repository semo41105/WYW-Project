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
#top > p{
	margin-top:50px;
	margin-left:100px;
	font-size:28pt;
}

#inputboxes{

float: left; padding: 0px 0px 0px 0px

}
#searchForm{

padding : 200px 200px;
}
#centerbox{
margin-left : 20%;
margin-right : 20%;
}
option {
color:#000000;
}
</style>
</head>

<body>
<br>
	<div id="top">
	<p>회원 목록</p>
	</div>
	<div align="center">
		<form action="" method="post">
			<div>
			
			<div>
			<select name="searchType" style="width:100px;">
				<option value="id" selected>아이디</option>
				<option value="name">이름</option>
				<!-- db 확인 후에 밸류값 수정하기 -->
				<option value="address">주소</option>
				<option value="email">이메일</option>
				<option value="userPhone">연락처</option>
				<option value="userEnabled">가입여부</option>
				<option value="userRole">등급</option>
			</select> 
			</div>
			
			<div>
			<input type="text" id="findtextbox" style="width:200px;">
			</div>
			
			<div>
			<input type="submit" value="검색">
			</div>
			
			</div>
		</form>
	</div>

	<br>
	<hr>
	<br>
	<!-- 검색 버튼 누르면 내용 받아와서 테이블 형식으로 뿌리기 -->
	<!-- 가입여부는 'y'-가입,'n'-탈퇴-->
	<!-- 관리 부분에 있는 수정, 탈퇴버튼을 누르면 회원 번호?랑 같이 페이지로 넘어가게 하기 -->


</body>
</html>