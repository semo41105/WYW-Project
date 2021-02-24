<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>    
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<Style type="text/css">
	#userimg{
		width:100px;
		heigth:100px;
		border-radius: 50px 50px 50px 50px;
	}
</Style>
</head>
<body>
<div id="userprofile">
	<img src="img/setting.png" alt="setting" align="right" width="100" onclick="">
	<span id="userimg">회원 사진..</span><span id="userid">userid</span><span id="location">위치지정</span>
	<div id="profile_count">
	<span>포스트 수</span><span>팔로워 수</span><span>팔로잉 수</span>
	</div>
</div>
<div id="content">

</div>
</body>
</html>