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
<nav id="menu">	
						<ul class="links">
							<li><h5>로그인</h5></li>
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

</body>
</html>