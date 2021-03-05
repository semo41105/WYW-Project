<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="assets/css/main.css" />

<!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.poptrox.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/main.js"></script>

<style type="text/css">
    .a1{
        margin : 10px;
    }
    #t1 {
       margin-left : 10%;
       margin-top : 35px;
    }
    #t2{
        float : right;
        margin-top : 50px;
        margin-right : 15%;
    }
    #t3{
        padding : 20px 0px 0px 380px;
    }
    section{
        height: 500px;
    }
    #left{   
        width: 10%;
        height: 85%;
        float: left;
        margin-top:5%;
        margin-left:12.5%;
        
    }
    #right{
        width: 60%;
        height: 85%;
        float: right;
        margin-top:5%;
        margin-right:12.5%;
         background-color: rgba(255, 255, 255, 0.185);
        border-radius : 30px 30px 30px 30px;
    }
    #btn{ 
        width:  131px;
        height: 40px;
        background-color: rgba(255, 255, 255, 0.185);
        border-radius : 10px 10px 10px 10px;
    }
    form {
        padding: 0px 0px 40px 325px;
        font-size: 14px;
    }
    #s0{ float: left; width: 34% }
	#s1{ float: left; width: 33%; padding: 25px 0px 25px 0px }
	#s2{ float: left; width: 100% }
	#s4{ padding: 8px 0px 0px 0px;
			 margin-left: 25px;
		}
			
	#ask1{ 
		border: 2px solid black;
		background-color: #fffbc1; 
		font-weight: bold; 
		color: #3f385a;
		}
    
    
</style>    
</head>
<body>
    <!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
					<header>
						<div id="s0">
							<a href="#">
								<img alt="WYW_날씨를 입다" src="images/logo/logo_wyw.png" width="200" height="100">
							</a>
						</div>
						<div id="s1"><input type="text"></div>
						<div id="s1">
							<input id="ask1" type="button" value="검색" onclick="">
							<a href="#" class="label">
								<img id="s4" class="icons" src="images/icon/setting.png" alt="setting" align="right" width="30px">
								<img id="s4" class="icons" src="images/icon/user.png" alt="user" align="right" width="30px">
								<img id="s4" class="icons" src="images/icon/up.png" alt="upload" align="right" width="30px">
							</a>
						</div>
					</header>

    <section class="a1">
        <article class="a1" id="left">
            <button onclick="location.href = 'UserInfoForm.jsp'" id="btn">회원정보수정</button>
            <button onclick="location.href = 'DeleteForm.jsp'" id="btn">회원탈퇴</button>
            <button onclick="location.href = 'NoticeForm.jsp'" id="btn">공지사항</button>
        </article>
        <article class="a1" id="right">
            <form>
              
            </form>   
        </article>
        
    </section>
  
    <footer class="a1">
        <p>&copy; Untitled. All rights reserved. Design: 
            <a href="http://templated.co">TEMPLATED</a>. Demo Images: 
            <a href="http://unsplash.com">Unsplash</a>.</p>
    </footer>
    
</body>
</html>