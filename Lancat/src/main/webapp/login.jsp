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
        	<a class="navbar-brand" href="#mypage" >랜선집사들</a>
        	<img src="./img/ransom.png" width="29px"style="margin-top:10px;">
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
        	<ul class="nav navbar-nav navbar-right">
      			<!-- 메인페이지 우측 상단의 이동란-->
				<li><a href="#BrandStory">브랜드 스토리</a></li>
        		<!--JSP파일로 이동 시 경로 바꾸기-->
        		<li><a href="http://121.147.185.221:5500/CatDays/loingPage.html">마이펫케어</a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/loingPage.html">펫다이어리</a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/catGoods.html">반려묘용품</a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/catEncyclopedia_main_main.html">커뮤니티</a></li>
        		<!--로그인, 회원가입-->
        		<li><a href="http://121.147.185.221:5500/CatDays/loingPage.html"><img src="/CatDays/img/login.png" width="20px" height="20px;"></a></li>
        		<li><a href="http://121.147.185.221:5500/CatDays/joinPage.html"><img src="/CatDays/img/join.png" width="25px" height="25px;"></a></li>
     		</ul>
    	</div>
	</div>
	</nav>
</body>	

<!-- ------------------------------------------------------------------------------- -->
<!-- 개인정보 수정페이지 -->
<div class="jumbotron text-center">
    <!-- 홈페이지 이름 작성 -->
    <br><h2>로그인</h2><br>
    <div class="spanTag">
      <span>Cat Days에 오신걸 환영합니다! 🐾 </span> 
    </div>
</div>
<!-- ------------------------------------------------------------ -->
<body style="background-color: rgb(245, 230, 251);">
    <section class="login-form" style="background-color: rgb(245, 230, 251); ">
        <div class="container py-10 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
              <div class="card rounded-3 text-black">
                <div class="row g-0">
                  <div class="col-lg-6">
                    <div class="card-body p-md-5 mx-md-4">
                      <div class="text-center">          
                      </div>
                      <!-- 로그인 폼 -->
                      <form action="Main.do" method="post">
                      <br>
                      <p>아이디를 입력하세요.</p>
                        <div class="form-outline mb-4">
                        	<input type="text" id="form2Example11" name="id" class="form-control" placeholder="Id"/>
                        	<label class="form-label" for="form2Example11"></label>
                        </div>
                        <br>
                      <p>비밀번호를 입력하세요.</p>
                      	<div class="form-outline mb-4">
                          <input type="password" id="form2Example22" name="pw" class="form-control" placeholder="Password" maxlength=10 style="width: 100%;"/>
                          <label class="form-label" for="form2Example22"></label>
                        </div>
                        <br>
                        <div class="text-center pt-1 mb-5 pb-1">
                          <input type="submit" class="button fit" value="로그인" style="background: rgb(189, 120, 212); color: white; border: none; ">
                          <br>
                        </div>
                     </div>
      			
                      </form>
      
                    </div>
                  </div>
               
                </div>
              </div>
            </div>
          </div>
    <!--위치 봐주세요!!!!!!!!!!!ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ -->      
          <nav>
				<%if(user != null){ %>
                <!--  // user로 묶은 것에서 email 가져오기 (로그인 성공시만)  -->
                <%String id = (String)request.getAttribute("id");%>									
				<!-- Wrapper -->
					<div id="wrapper">
				<!-- Menu -->
						<ul class="actions vertical">
							<li><h1>환영합니다!</h1></li>
							<li>회원가입을 축하합니다.</li>
							<!-- request영역에 저장된 회원정보 중 이메일을 출력하시오. -->
							<li>스마트 고양이 화징실 아이디는<%=id %>입니다.</li>
							<li><button onclick='location.href="Main.jsp"'>시작하기</button></li>
						</ul>
					</div>
                          <!-- 로그인 성공  -->  
                         <%if(user != null){
                              // 계정이 일반 계정인 경우
                             %> 
                              <a href="members_update.jsp">개인정보수정</a>
                              <a href="Logout.do">로그아웃</a>
                             <%}%>
                            <% }else{ %><a href="Main.do"></a>
                            <%} %>
                    
							<!-- 로그인 후 Logout.jsp로 이동할 수 있는'로그아웃'링크와 '개인정보수정'링크를 출력하시오. -->
						</nav>
						
						
						
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
							<%   // 로그인 성공했다면
								 if(user != null){%>
								 <% if (user.getId().equals("admin")){ %>
								 <a href="Diary_Select.do">육묘일기 리스트</a>
								 <a href="Diary_Delete.do">육묘일기 삭제 리스트</a>
								 <%}else{ %>
								  <a href="Select.do"><%=user.getId() %>님의 게시판</a>
								 <%}%>
								<% 	 
								}else{ %>
								<h3>아이디와 비밀번호를 확인해주세요.</h3>
								<%} %>  
								
							</header>
							
 <!-- ------------------------------------------------------------ -->

      </section>

</body>
</html>