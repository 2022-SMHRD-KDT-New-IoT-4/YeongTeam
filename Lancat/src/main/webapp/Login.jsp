<%@page import="com.smhrd.model.MembersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜선집사들 🐾Cat Days🐾</title>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
 		<link rel = "stylesheet" href = "Main.css">
</head>
<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ 로그인 페이지★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
 <!-- 반응형 Nav var(Navigation Bar) 
      : 우리가 흔히 사용하는 메뉴(menu) 및 사이트로고, 여러링크 포함 -->
	<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
    	<div class="navbar-header">
    		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
    			<span class="icon-bar"></span>
    			<span class="icon-bar"></span>
    			<span class="icon-bar"></span>                        
    		</button>
        
  <!-- 메인페이지 왼쪽 상단에 작성됨-->
        	<a class="navbar-brand" href="Main.jsp" >랜선집사들</a>
        	<img src="./image/ransom.png" width="29px"style="margin-top:10px;">
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
        	<ul class="nav navbar-nav navbar-right">
      			<!-- 메인페이지 우측 상단의 이동란-->
				 <!-- 로그인 페이지로 이동? 아님 날릴까...-->
	       <li><a href="brandStory.jsp">브랜드 스토리</a></li>
           <!--JSP파일로 이동 시 경로 바꾸기-->
           <li><a href="Login.jsp">마이펫케어</a></li>
           <li><a href="Login.jsp">펫다이어리</a></li>
           <li><a href="catGoods.jsp">반려묘용품</a></li>
           <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
           <!--로그인, 회원가입-->
           <li><a href="Login.jsp"><img src="./image/login.png" width="20px" height="20px;"></a></li>
           <li><a href="Join.jsp"><img src="./image/join.png" width="25px" height="25px;"></a></li>
     		</ul>
    	</div>
	</div>
	</nav>
</body>	

<!-- ------------------------------------------------------------------------------- -->

		<%
         String fail = (String)request.getAttribute("fail");
		 
         %>
         <%if(fail != null){%>
         	
          	<script>
	            Swal.fire({
	            icon: "error",
	            title: "로그인 &nbsp; 실패",
	            text: "아이디와 비밀번호가 일치하지 않습니다.",
	            });
        	</script>
          
		 <%}%>	
<div class="jumbotron text-center">
                
    <!-- 홈페이지 이름 작성 -->
    <br><h2>로그인</h2><br>
    <div class="spanTag">
      <span>CatDays와 함께 하세요! 🐾 </span> 
    </div>
</div>
<!-- ------------------------------------------------------------ -->
<div class="container">
		<div class="row_group">
            <!-- 아이디 입력 -->
            	<form action="Login.do" method="post">
            	<div class="userInput">
               		<h3 class="list">아이디</h3>
               		<span class="box int_id" ><input type="text" id="id" name = "id" class="int check"
                  	maxlength="20" placeholder="아이디를 입력하세요"></span>
            	</div>
            	<!-- 비밀번호 입력 -->
                <div class="userInput">
                    <h3 class="list">비밀번호</h3>
                    <span class="box int_id" ><input type="password" id="pw" name = "pw" class="int check"
                       maxlength="20" placeholder="비밀번호를 입력하세요"></span>
                      <div class="col-12" style="margin-top: 2%;" align="center">
                    <span>
                    	<input type="submit" value="로그인" class="button fit" style="border: none; color: white;
                    	background-color: rgb(189, 120, 212);">
                    <br>
                    <br>
                    <br>
                    </span>
            		</div>
                      </form>
          </div>
 </div>

</body>
</html>