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