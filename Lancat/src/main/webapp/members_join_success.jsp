<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<style>
	</style>
	<%
		String id = (String)request.getAttribute("id");
	%>
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
		<!-- Scripts -->
			
	</body>
</html>



<!-- ------------------------------------------------------------------- -->
진짜 파일에서 수정작업한 메인 코드 



<%@page import="com.smhrd.model.MembersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />

</head>
<body>
<%
MembersDTO user = (MembersDTO)session.getAttribute("user");
%>
<div id="wrapper">


					여기서부터 하자!!!!!!!!!!!!!!!!!!!!!!
				<!-- Menu -->
				<nav id="menu">	
						<ul class="links">
								<form action="Login.do" method="post">
									<li><input type="text" name="id" placeholder="ID을 입력하세요"></li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>회원가입</h5></li>
								<form action="Join.do" method="post">
									<li><input type="text"  placeholder="ID을 입력하세요" name = "id"></li>
									<li><input type="password"  placeholder="PW를 입력하세요" name = "pw"></li>
									<li><input type="text"  placeholder="고양이이름을 입력하세요" name="catname"></li>
									<li><input type="text"  placeholder="고양이 생년월일 입력하세요" name="catbirth"></li>
									<li><input type="text"  placeholder="고양이 몸무게를 입력하세요" name="catweight"></li>
									<li><input type="text"  placeholder="집주소를 입력하세요" name="address"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>		
					
					
					
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
							
					</section>
					
					
								
	</div>		

</body>
</html>