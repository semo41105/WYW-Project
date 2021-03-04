<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserInfo</title>
    <style>

    body{
        background-image: url(images/bg.jpg);
    }    

   .infomain{
        margin: 30px;
       
    }
    section{
        height : 500px;
    }
    #left{
       
        width : 13%;
        height : 85%;
        float : left;
        margin-left : 10%;
       
    }
    #right{
        
        width: 60%;
        height : 85%;
        float:right;
        margin-right : 10%;
        background-color: rgba(255, 255, 255, 0.281);
        
    }
    header img{
        height: 100px;
        margin-top: 7px;
        margin-left : 130px;
    }
    span{
        margin-left : 680px;
    }
    span img{
        width: 30px;
        height: 30px;
        margin-bottom : 14px;
        margin-left : 5px;
    }
   #btn{
       width : 167px;
       height: 40px;
       background-color: rgba(255, 255, 255, 0.137);
      
   }
   form{
       margin-top: 2%;
       margin-left:34%;
       font-style:unset;
   }
   div {
       margin-left : 44%;
       margin-top: 5%;
       width:10px;
        }
   p{
       font-size : 10px;
       color : whitesmoke;
       margin-left:10px;
   }
 
    </style>
</head>
<body>
    <header class="infomain">
        <img src="images/logo_wyw.png">
        <span>
            <a href=""><img src="images/button/home.png"></a>
            <a href=""><img src="images/button/map.png"></a>
            <a href=""><img src="images/button/set.png"></a>
            <a href=""><img src="images/button/user.png"></a>
        </span>
    </header>

    <section class="infomain">
        <article class="infomain" id="left">       
            <button onclick="" id="btn"> 프로필 편집 </button><br>
            <button onclick="" id="btn"> 회원 탈퇴 </button><br>
            <button onclick="" id="btn"> 공지사항 </button>
        </article>
        <article class="infomain" id="right">
            <div>
                <img src="images/button/user.png">            
            </div>
            <form>
                   <label> 이름   </label> <input type="text" name="userid" size="20"><br>
                                    <p>이름은 14일 안에 두 번만 변경할 수 있습니다.</p><br>
                   <label> 아이디  </label> <input type="text" name="userpw" size=""><br>
                                    <p>대부분의 경우 14일 이내에 아이디를 <br>
                                     다시 변경할 수 있습니다</p>
                    <label> 소개  </label> <input type="text" name="userinfo" width="20px"height="40px"><br>
                    <label> 이메일   </label> <input type="text" name="userem" size="20"><br>
                    <label> 전화번호  </label> <input type="text" name="userph" size="20"><br>
                    <label> 성별   </label> <input type="checkbox" name="userfw" size="20">
                                            <input type="checkbox" name="userfw" size="20"><br>
                    <button onclick="">수정</button>                   
                </form>          
        </article>
    </section>

    <footer class="infomain">
        
    </footer>
</body>
</html>