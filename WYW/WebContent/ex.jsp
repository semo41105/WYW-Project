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
	body{
		margin:30px;
		margin-left:150px;
		margin-right:400px;
	}

	#userprofile{
		height: 200px;
	}
	#userimg{
	    border-radius: 100%;
	    width: 150px;
    	height: 110px;
   	 	text-align: center;
    	float: left;
    	padding-top: 30px;
	    border: solid 1px black;
		
		transform: translate(50px, 20px);
	}
</Style>
</head>
<body>
<div id="userprofile">
	<img src="img/setting.png" alt="setting" align="right" width="30px" onclick="">
	<span id="userimg">이미지</span>
	<span id="userid">userid</span>
	<span id="location">위치지정</span>
	<div id="profile_count">
	<span>포스트 수</span>
	<span>팔로워 수</span><span>팔로잉 수</span>
	</div>
</div>
<hr>
<div id="content">
	<tabele>
		<col width="30%"><col width="30%"><col width="30px">
<%
	//for() 문으로 이미지 뿌려주기
%>
	</tabele>

</div>
</body>
</html>