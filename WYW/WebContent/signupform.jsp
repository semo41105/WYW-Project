<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<script type="text/javascript">
	function idChk() {
		var doc = document.getElementsByName("userid")[0];
		if (doc.value.trim() == "" || doc.value == null) {
			alert("사용할 아이디를 입력해주세요.");
		} else {
			var target = "loginController.do?command=idchk&id="+ doc.value.trim();
			window.open(target, "", "width=200, height=200");
		}
	}

	function idChkConfirm() {
		var chk = document.getElementsByName("userid")[0].title;
		if (chk == "n") {
			alert("아이디 중복체크를 해주세요.");
			document.getElementsByName("userid")[0].focus();
		}
	}
</script>

</head>
<body>
<h1>Sign Up</h1>
	<form action="loginController.do" method="post">
		<input type="hidden" name="command" value="insertuser">
		<table border="1">
			<tr>
				<th>I D</th>
				<td>
					<input type="text" name="userid" title="n" required="required">
					<input type="button" value="중복체크" onclick="idChk();">
				</td>
			</tr>
			<tr>
				<th>P W</th>
				<td><input type="password" name="userpw" onclick="idChkConfirm() ;" required="required"></td>			
			</tr>
			<tr>
				<th>NAME</th>
				<td><input type="text" name="username" onclick="idChkConfirm();" required="required"></td>
			</tr>
			<tr>
				<th>ADDR</th>
				<td><input type="text" name="useraddr" onclick="idChkConfirm();" required="required"></td>
			</tr>
			<tr>
				<th>PHONE</th>
				<td><input type="text" name="userphone" onclick="idChkConfirm();" required="required"></td>
			</tr>
			<tr>
				<th>EMAIL</th>
				<td><input type="text" name="useremail" onclick="idChkConfirm();" required="required"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="signup">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>