<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e){
			
			if("#findtextbox"==null){
				alert("찾을 내용을 입력하세요.");
				return false;
			}
			
			
			
		});
		
		
	});

</script>
</head>
<body>
<!-- 헤더랑 푸터는 한꺼번에 넣기 -->
<h2>회원 목록</h2>
	<div align="center">
	<form id="searchForm" action="" method="post">
	<select name="searchType" >
	<option value="id" selected>아이디</option>
	<option value="name">이름?닉네임?</option>
	<!-- db 확인 후에 결정 -->
	<option value="address">주소</option>
	<option value="email">이메일</option>
	<option value="phoneNumber">연락처</option>
	<option value="enabled">가입여부</option>
	</select>
	<input type="text" id="findtextbox">
	<!-- input?submit? -->
	<button name="">검색</button>
	</form>
	</div>
	
	<br>
	<hr>
	<br>
	<!-- 내용 받아와서 테이블 형식으로 뿌리기 -->
	<!-- 가입여부는 'y'-가입,'n'-탈퇴-->
	<!-- 관리 부분에 있는 수정, 탈퇴버튼을 누르면 회원 번호?랑 같이 페이지로 넘어가게 하기 -->
	<table border="1">
	<!-- 글 번호, 제목, 날짜 -->
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>날짜</th>
	</tr>
	<!-- 반복문 통해서 공지사항 내용 뿌려주기 -->
	<c:choose>
	<!--  <c:when test="${empty dto }">
		 <tr>
		 	<td colspan="3">-작성된 글이 존재하지 않습니다.</td>
		 </tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="dto" items="{list}">
				<tr>
					<td>글번호..?</td>
					<td><a href="글 내용 보는 컨트롤러.do&공지글 번호?">${dto.title }</a></td>
					<td>${dto.regdate></td>
				</tr>
			</c:forEach>
		</c:otherwise>
	 -->
	</c:choose>
	<tr>
		<td colspan="3">
			<input type="button" value="글쓰기" onclick="location.href='컨트롤러.작성'"
		</td>
	</tr>
	</table>
	
</body>
</html>