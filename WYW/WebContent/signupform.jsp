<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.poptrox.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/main.js"></script>
<script type="text/javascript">
	function idChk() {
		var doc = document.getElementsByName("userid")[0];
		if (doc.value.trim() == "" || doc.value == null) {
			alert("사용할 아이디를 입력해주세요.");
		} else {
			var target = "loginController.do?command=idchk&id="
					+ doc.value.trim();
			window.open(target, "", "width=350, height=200");
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
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header>
			<div
				style="display: flex; flex-direction: column; justify-content: space-around; align-items: center; padding: 20px;">
				<img alt="WYW_날씨를 입다" src="images/logo/logo_wyw.png" width="200"
					height="140">
			</div>
		</header>

		<!-- Main -->
		<section id="main">
			<div style="display: flex; flex-direction: column; justify-content: space-around; align-items: center;">
				<h1>Sign Up</h1>
				<form action="loginController.do" method="post">
					<input type="hidden" name="command" value="insertuser">
					<table>
						<col width="100">
						<tr style="background-color:transparent;">
							<th style="text-align:center;">ID</th>
							<td>
								<input type="text" name="userid" title="n" required="required" style="margin-bottom:10px; width:150px; height:30px;">
								<input type="button" value="중복확인" onclick="idChk();" style="font-size:15px; width: 150px; height:30px; line-height:0;">
							</td>
						</tr>
						<tr>
							<th style="text-align:center;">PW</th>
							<td><input type="password" name="userpw"
								onclick="idChkConfirm() ;" required="required" style="width:150px; height:30px;"></td>
						</tr>
						<tr style="background-color:transparent;">
							<th style="text-align:center;">NAME</th>
							<td><input type="text" name="username"
								onclick="idChkConfirm();" required="required" style="width:150px; height:30px;"></td>
						</tr>
						<tr>
							<th style="text-align:center;">ADDR</th>
							<td><input type="text" name="useraddr"
								onclick="idChkConfirm();" required="required" style="width:150px; height:30px;"></td>
						</tr>
						<tr style="background-color:transparent;">
							<th style="text-align:center;">PHONE</th>
							<td><input type="text" name="userphone"
								onclick="idChkConfirm();" required="required" style="width:150px; height:30px;"></td>
						</tr>
						<tr>
							<th style="text-align:center;">EMAIL</th>
							<td><input type="text" name="useremail"
								onclick="idChkConfirm();" required="required" style="width:150px; height:30px;"></td>
						</tr>
						<tr style="background-color:transparent; border: solid 0px; text-align:center;">
							<td colspan="2">
								<input type="submit" value="signup" style="height:30px; line-height:0;">
							</td>
						</tr>
					</table>
				</form>

				<!-- Footer -->
				<footer id="footer">
					<p>
						&copy; Untitled. All rights reserved. Design: <a
							href="http://templated.co">TEMPLATED</a>. Demo Images: <a
							href="http://unsplash.com">Unsplash</a>.
					</p>
				</footer>

			</div>
</body>
</html>

