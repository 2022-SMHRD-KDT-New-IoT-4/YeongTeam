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
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
 		<link rel = "stylesheet" href = "Main.css">
</head>
<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★ 회원가입 페이지★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
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
        	<a class="navbar-brand" href="#mypage" >랜선집사들</a>
        	<img src="./image/ransom.png" width="29px"style="margin-top:10px;">
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
        	<ul class="nav navbar-nav navbar-right">
      			<!-- 메인페이지 우측 상단의 이동란-->
				<li><a href="#BrandStory">브랜드 스토리</a></li>
        		<!--JSP파일로 이동 시 경로 바꾸기-->
        		<li><a href="http://121.147.185.221:5500/CatDays/loingPage.html">마이펫케어</a></li>
        		<li><a href="diary_update.jsp">펫다이어리</a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/catGoods.html">반려묘용품</a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/catEncyclopedia_main_main.html">커뮤니티</a></li>
        		<!--로그인, 회원가입-->
        		<li>        		
        		<a href="http://121.147.185.221:5500/CatDays/loingPage.html"><img src="./image/login.png" width="20px" height="20px;"></a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/joinPage.html"><img src="./image/join.png" width="25px" height="25px;"></a></li>
     		</ul>
    	</div>
	</div>
	</nav>
</body>	

<!-- --------------------여기까지 뚜껑---------------------------------------- -->
<!-- 개인정보 수정페이지 -->
<div class="jumbotron text-center">
    <!-- 홈페이지 이름 작성 -->
    <br><h2>회원가입</h2><br>
    <div class="spanTag">
      <span>집사님 환영합니다. Cat Days와 함께해요 🐾 </span> 
    </div>
</div>

  <!-- 자바스크립트(유효성검사 해당) -->
<body>
	<div id="wrapper" class="wrapper">
        <form action="Join.do" method="post">
          <!-- 회원가입 타이틀부분 -->
           <header>
				<div id="header">
					<h1 class="h_loho">
                    <span><img alt="" src="./image/main.png"></span>
                 	</h1>
                </div>
           </header>

		<div class="container">
			<div class="row_group">
            <!-- 아이디 입력 -->
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
                </div>
            	<!-- 주소 입력 -->
				<div class="userInput">
                    <h3 class="list">자택주소</h3>
                    <span class="box int_id" ><input type="text" id="addr" name="addr" class="int check"
                       maxlength="20" placeholder="집주소를 입력하세요"></span>
                </div>
            	<!-- 반려묘이름 입력 -->
            	<h3 class="list" style="padding: 5%;" align="center">고양이 정보 등록 🐾</h3>
                <div class="userInput">
					<h3 class="list">반려묘 이름</h3>
                    <span class="box int_id">
                        <input type="text" id="name" name="cat_Name" class="int check" maxlength="20" placeholder="반려묘이름을 작성해주세요">
                    </span>
                </div>
			</div>
		</div>
       	<!--고양이 정보 등록-->
        <div class="userInput" align="center">
			<div id="content">
            	<h3 class="list">반려묘 몸무게(kg)</h3>
                <span class="box int_weight">
                	<input type="text" id="weight" name="cat_Wt" class="int" maxlength="5" 
                     style="width:400px" placeholder="몸무게를 입력하세요.">kg
                </span>
                 	<!--생년월일 INPUT태그-->
             	<div align="center">
                	<h3>반려묘 생년월일</h3>
                	<input type="date" name="cat_Birth">
                </div>
			</div>
		</div>            
			<div class="col-12" style="margin-top: 2%;" align="center">
                    <span>
                    	<input type="submit" value="완료" class="button fit" style="border: none; color: white;
                    	background-color: rgb(189, 120, 212);">
                    <br>
                    <br>
                    <br>
                    </span>
            </div>
		</form>        
	</div>
	
			
</body>
</html>