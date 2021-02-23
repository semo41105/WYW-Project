<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WYW_StartPage</title>
</head>
<body>
	<div style="width: 400px">
		<h1>WYW</h1>
		<form action="Logincontroller.jsp" method="post">
			<input type="hidden" name="command" value="login">
			<table>
				<col width="300">
				<tr>
					<td><input type="text" name="id" placeholder="아이디"></td>
				</tr>
				<tr>
					<td><input type="text" name="pw" placeholder="비밀번호"></td>
				</tr>
				<tr>
					<td><input type="submit" value="login"><td>
				<tr>	 
					<td><input type="button" value="signup" onclick="location.href='controller.do?command=signupform'"></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>