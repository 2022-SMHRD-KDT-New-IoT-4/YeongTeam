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
<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★진짜 메인★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->

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
      			<%
			MembersDTO user = (MembersDTO)request.getSession().getAttribute("user");
		%>
        <% if(user == null){ %>
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
            <%}else{ 
                // 로그인 성공
                if(user.getId().equals("admin")){
                    // 계정이 admin인지 확인 %>
                    <li><a href="brandStory.jsp">브랜드 스토리</a></li>
                    <!--JSP파일로 이동 시 경로 바꾸기-->
                    <li><a href="catGoods.jsp">반려묘용품</a></li>
                    <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
                    <!--관리자페이지-->
                    <li><a href="adminMain.jsp">관리자 페이지<img src="./image/adminpage.png" width="25px" height="25px;"></a></li>
                   
                <% }else{
                    // 계정이 일반 계정인 경우  %>
                    <li><a href="brandStory.jsp">브랜드 스토리</a></li>
                    <!--JSP파일로 이동 시 경로 바꾸기-->
                    <li><a href="graphPage.jsp">마이펫케어</a></li>
                    <li><a href="./diary_calendar/calendar_main.jsp">펫다이어리</a></li>
                    <li><a href="catGoods.jsp">반려묘용품</a></li>
                    <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
                    <!--로그인, 회원가입-->
                    <li><a href="members_update.jsp">회원정보 수정</a></li>
                <%}
                }%>
     		</ul>
    	</div>
	</div>
	</nav>

	<div class="jumbotron text-center">
  	<!-- 홈페이지 이름 작성 -->
  		<h1>Cat Days  <img src="./image/title.png" width="100px"></h1> 
  		<p>for my precious cat</p> 
  	</div>

<!-- Container (BrandStory Section) -->
	<div id="BrandStory" class="container-fluid">
  		<div class="row">
    		<div class="col-sm-8">
      			<h2>브랜드 스토리</h2><br>
        		<h3>Cat Days</h3>
        		<h4>지속 가능한 마이펫 라이프</h4><br>
        		<p>함께 사는 고양이의 상태가 매일 궁금할 때,</p>
        		<p>알아볼 수 있는 방법이 있다면 얼마나 좋을까요?</p><br>
        		<p>온전히 고양이를 위한 마음으로 아이디어가 시작되었어요.</p>
        		<p>집사의 사명감을 갖고 지금부터 Cat Days와 함께 일상을 시작해보세요.</p>
      		</div>
    <!-- 메인 첫번째 픽토그램! -->
    		<div style="text-align: center;">
      			<img src="./image/cute_cat.png" width="250" height="250">
    		</div>
  		</div>
	</div>

	<div class="container-fluid bg-grey">
  		<div class="row">
    		<div class="col-sm-4">
    		<!-- 메인 두번째 픽토그램! -->
      			<div style="text-align: center;">
        			<img src="./image/storyCat.png" width="200" height="200">
      			</div>
    		</div>
    		<div class="col-sm-8">
      			<h2>IoT 고양이화장실</h2><br>
      			<p><strong>MISSION:</strong> 우리의 미션은 반려묘의 건강상태를 지속적으로 관찰하고
        			예측함으로써 이상이 생기면 즉각적인 대처가 가능하게 만들어주는 일입니다. 고양이가 화장실을 이용할 시 
        			무게를 측정하여 몸무게를 웹상으로 전송해 지속적인 무게 변화를 관찰할 수 있습니다. 또한 화장실 이용 후 일정시간이
      				지나면 설치해 둔 팬이 돌아가며 공기청정 효과를 줄 수 있습니다. 이용한 시간과 횟수, 배변 종류 등을 기록해
    				연동된 Cat Days 웹에서 확인할 수 있습니다. </p><br>
    		</div>
  		</div>
	</div>

  <!----------------------------------------------->
  <!-- 제품 사용한 후기, 기타 등등 넣으면 좋다/소중한 고양이를 위한 슬로건-->
	<h2>Cat Days 후기😺</h2>
 	<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    	<ol class="carousel-indicators">
      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      		<li data-target="#myCarousel" data-slide-to="1"></li>
      		<li data-target="#myCarousel" data-slide-to="2"></li>
    	</ol>    
    	<div class="carousel-inner" role="listbox">
      		<div class="item active">
        		<h4>"고양이 건강 케어가 쉬워졌어요!"<br>
          		<p>초보집사에게 최애템...!!</p></h4>
      		</div>
      		<div class="item">
        		<h4>"집사 필수템"<br><span>냥이들을 더 신경쓰게 되었어요 +_+</span></h4>
      		</div>
      		<div class="item">
        		<h4>"병원가기 전 필수로 체크해요"<br><span>제대로 고양이의 상태를 알 수 있어서 좋아요^^</span></h4>
      		</div>
    	</div>
<!--------- 맨 밑에 후기콘솔 ------------->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
	</div>


</body>
</html>