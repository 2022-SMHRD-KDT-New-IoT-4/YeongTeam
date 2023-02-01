<%@page import="com.smhrd.model.MembersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>community_반려백과</title>
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
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<!-- 반응형 Nav var(Navigation Bar)
  : 우리가 흔히 사용하는 메뉴(menu) 및 사이트로고, 여러링크 포함 -->
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
					<!-- 메인페이지 우측 상단의 이동란-->
					<%
					MembersDTO user = (MembersDTO) request.getSession().getAttribute("user");
					%>
					<% if(user == null){ %>
			           <li><a href="Main.do">브랜드 스토리</a></li>
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
		                    <li><a href="Main.do">브랜드 스토리</a></li>
		                    <li><a href="catGoods.jsp">반려묘용품</a></li>
		                    <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
		                    <!--관리자페이지-->
		                    <li><a href="AdminMembers_SelectAll.do"><img src="./image/adminpage.png" width="25px" height="25px;"></a></li>
		                   
		                <% }else{
		                    // 계정이 일반 계정인 경우  %>
		                    <li><a href="Main.do">브랜드 스토리</a></li>
		                    <li><a href="Tltuse_Select.do">마이펫케어</a></li>
		                    <li><a href="Calender_Main.do">펫다이어리</a></li>
		                    <li><a href="catGoods.jsp">반려묘용품</a></li>
		                    <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
		                    <li><a href="members_update.jsp">회원정보 수정</a></li>
		                <%}
		                }%>
				</ul>
			</div>
		</div>
	</nav>

<div class="jumbotron text-center">
		<!-- 홈페이지 이름 작성 -->
		<h1>
			Cat Days <img src="./image/title.png" width="100px">
		</h1>
		<p>for my precious cat</p>
	</div>
</body>
<!-------------------------- 여기까지가 각 페이지마다 뚜껑이 될 페이지! -------------------->
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<!-- 홈페이지의 로고 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expand="false">
				<span class="icon-bar"></span>
				<!-- 줄였을때 옆에 짝대기 -->
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand">병원정보 커뮤니티</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="catEncyclopedia_main.jsp">반려백과</a></li>
				<!-- 메인 페이지 -->
				<li><a href="catMap.jsp">내주변 동물병원 알아보기</a></li>
				<li><a href="catTalk.jsp">반려묘 건강고민</a></li>
			</ul>
		</div>
	</nav>
	<!---------------------------------------------------->
	<br>
	<div class="container">
		<table class="table table-striped" align="center">
			<thead>
				<tr>
					<h2>반려백과</h2>
					<th>No.</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>259</td>
					<td>[반려묘/건강]고양이 암에 관한 10가지 사실</td>
					<td>랜선수의사</td>
					<td>2023.01.20</td>
				</tr>
				<tr>
					<td>258</td>
					<td>[반려묘/건강]고양이 구토의 원인과 해결방법</td>
					<td>랜선수의사</td>
					<td>2023.01.18</td>
				</tr>
				<tr>
					<td>257</td>
					<td>[반려묘/건강]고양이 물 먹이는 방법</td>
					<td>랜선수의사</td>
					<td>2023.01.15</td>
				</tr>
				<tr>
					<td>256</td>
					<td>[반려묘/건강]고양이의 심근증</td>
					<td>랜선수의사</td>
					<td>2023.01.12</td>
				</tr>
				<tr>
					<td>255</td>
					<td>[반려묘/상식]아기 고양이 키우는 법</td>
					<td>랜선수의사</td>
					<td>2023.01.11</td>
				</tr>
				<tr>
					<td>254</td>
					<td>[반려묘/상식]고양이의 습성-울서킹</td>
					<td>랜선수의사</td>
					<td>2023.01.09</td>
				</tr>
				<tr>
					<td>253</td>
					<td>[반려묘/상식]고양이의 임신부터 출산까지의 흐름</td>
					<td>랜선수의사</td>
					<td>2023.01.06</td>
				</tr>
				<tr>
					<td>252</td>
					<td>[반려묘/건강]고양이의 당뇨병</td>
					<td>랜선수의사</td>
					<td>2023.01.03</td>
				</tr>
				<tr>
					<td>251</td>
					<td>[반려묘/건강]오리엔탈에 많은 질병-원인, 유전성부터 검사, 치료법까지</td>
					<td>랜선수의사</td>
					<td>2023.01.02</td>
				</tr>
				<tr>
					<td>250</td>
					<td>[반려묘/건강]이집션에 많은 질병-원인, 유전성부터 검사, 치료법까지</td>
					<td>랜선수의사</td>
					<td>2023.01.02</td>
				</tr>
				<tr>
					<td>249</td>
					<td>[반려묘/건강]고양이 하부요로증후군</td>
					<td>랜선수의사</td>
					<td>2022.12.28</td>
				</tr>
				<tr>
					<td>248</td>
					<td>[반려묘/건강]요관 결석 발병 쉬운 고양이 품종 판명</td>
					<td>랜선수의사</td>
					<td>2022.12.27</td>
				</tr>
			</tbody>
		</table>

		<!------------------------------------------------------>

		<a class="btn btn-default pull-right">글쓰기</a>

		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">6</a></li>
				<li><a href="#">7</a></li>
				<li><a href="#">8</a></li>
				<li><a href="#">9</a></li>
				<li><a href="#"><img src="./image/catIcon.png" alt=""
						width="24px"></a></li>
			</ul>
		</div>
	</div>



	<script src="js/jquery-3.1.1.js"></script>
	<script src="js/bootstrap.js"></script>


</body>
</html>