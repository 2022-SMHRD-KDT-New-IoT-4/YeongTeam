<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>육묘일기 작성하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="Main.css">
<script src="https://kit.fontawesome.com/862f1afc4c.js"
	crossorigin="anonymous"></script>

</head>

<style>
th, td {
	text-align: center;
	font-size: 18px;
}
</style>


<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<!-- 반응형 Nav var(Navigation Bar) 
      : 우리가 흔히 사용하는 메뉴(menu) 및 사이트로고, 여러링크 포함 -->
	<!--Head Start -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- 메인페이지 왼쪽 상단에 작성됨-->
				<a class="navbar-brand" href="Main.jsp">랜선집사들</a> <img
					src="./image/ransom.png" width="29px" style="margin-top: 10px;">
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Main.do">브랜드 스토리</a></li>
			        <li><a href="Tltuse_Select.do">마이펫케어</a></li>
			        <li><a href="Calender_Main.do">펫다이어리</a></li>
			        <li><a href="catGoods.jsp">반려묘용품</a></li>
			        <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
			        <li><a href="members_update.jsp">회원정보 수정</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<!-- 홈페이지 이름 작성 -->
		<h1>Cat Days <img src="./image/title.png" width="100px"></h1>
		<p>for my precious cat</p>
	</div>
	<!--Head End -->
	<!-- 육묘일기 작성하는 폼 -->
	<div class="makepost" style="width: 500px; text-align: center; margin-left: 700px">
	<form action="Diary_Insert.do" method="post">
	<h2 align="center">육묘일기 작성하기</h2>
		<table border="1" width=500 align="center">
			<tr>
				<th colspan="2" height="50px">오늘 내 반려묘는 어떤 하루를 보냈나요?</th>
			</tr>
			<tr>
				<td width=65>
					<select style="width: 100%;">
						<option>기쁨</option>
						<option>슬픔</option>
						<option>아픔</option>
					</select>
				</td>
				<td>
					<input type="text" name="d_title" placeholder="   제목을 입력하세요." maxlength=20 style="width: 100%">
				</td>
			</tr>
			<tr>
				<td colspan="2" height=400>
					<textarea name="d_content" placeholder="  내용을 입력하세요." style="width: 100%; height: 100%"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align=left>
					<input type="file" name="d_file">
				</td>
			</tr>
		</table>

	<div>
	<br>
		<input class="btn btn-primary" type="submit" value="메인으로 이동하기" formaction="Main.do" style="none; background-color: rgb(189, 120, 212); float: right;">
		<input class="btn btn-primary" type="submit" name="makePost" formaction="Diary_Insert.do" value="업로드 하기" style="none; background-color: rgb(189, 120, 212); float: right;"> 
	</div>
	</form>
	</div>
	<br>
	<br>
	<br>
</body>
</html>