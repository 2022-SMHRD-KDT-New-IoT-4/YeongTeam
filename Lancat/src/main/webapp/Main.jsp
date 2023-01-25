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
									<li><input type="text"  placeholder="ID을 입력하세요" name = "eamil"></li>
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
							<%if(user != null){ 
                              // user로 묶은 것에서 email 가져오기 (로그인 성공시만)
                              String email = user.getId();%>
                              <h1><%=user.getId() %>님 환영합니다 !</h1><%
                              // 로그인 성공
                              if(user.getId().equals("admin")){
                              // 계정이 admin인지 확인 %>
                              <a href="Select.do">회원관리</a>
                              <a href="Logout.do">로그아웃</a>
                              <%} else {
                              // 계정이 일반 계정인 경우
                             %> 
                              <a href="members_update.jsp">개인정보수정</a>
                              <a href="Logout.do">로그아웃</a>
                             <%}%>
                            <% }else{ %><a href="#menu"></a>
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
								 <a href="dairy_selectAll.jsp">육묘일기 리스트</a>
								 <a>육묘일기 삭제 리스트</a>
								 <%}else{ %>
								  <a href="select.jsp"><%=user.getId() %>님의 게시판</a>
								 <%}%>
								<% 	 
								}else{ %>
								<h1>로그인한 세션아이디를 출력해주세요</h1>
								<%} %>  
								
								<!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.
									 ex)smart님 환영합니다 -->
							</header>
							
					</section>
					
					
								
	</div>		

</body>
</html>