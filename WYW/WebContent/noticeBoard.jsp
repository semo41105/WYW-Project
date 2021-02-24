<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">


</script>
</head>
<body>
<h2>공지사항</h2>
<!-- 정렬 방식은 날짜 내림차순. 쿼리문에서 정렬 -->
<!--  -->
	<div align="center">
	<table border="1" >
	<col width="100"><col width="500"><col width="150">
	<!-- 글 번호, 제목, 날짜 -->
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>날짜</th>
	</tr>
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
		<td colspan="3" align="right">
			<input type="button" value="글쓰기" onclick="">
		</td>
	</tr>
	</table>
	</div>
</body>
</html>