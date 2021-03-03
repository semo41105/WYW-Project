<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import="com.mvc.dto.UserDataDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adminmain</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/main.js"></script>
</head>
<body>
	<%
		UserDataDto dto = (UserDataDto) session.getAttribute("dto");

		if (dto == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	<table >
		<tr>
			<th style="text-align:center;"><%=dto.getUserid() %> 님 환영합니다.(등급: <%=dto.getUserrole() %>)</th>
		</tr>
		<tr>
			<th style="text-align:center;"><a href="loginController.do?command=userlistall">회원 정보 조회(탈퇴 회원 포함))</a></th>
		</tr>
		<tr>
			<th style="text-align:center;"><a href="loginController.do?command=userlistenabled">회원 정보 조회(enabled='y')</a></th>
		</tr>
		<tr>
			<th style="text-align:center;"><a href="loginController.do?command=logout">Logout</a></th>
		</tr>
		
	</table>
	
	
</body>
</html>