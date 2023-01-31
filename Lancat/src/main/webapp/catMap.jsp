<%@page import="com.smhrd.model.MembersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>community_내주변 동물병원 찾아보기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
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
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7tyns3rmqr"></script>

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
					<%
					MembersDTO user = (MembersDTO) request.getSession().getAttribute("user");
					%>
					<%
					if (user == null) {
					%>
					<!-- 로그인 페이지로 이동? 아님 날릴까...-->
					<li><a href="brandStory.jsp">브랜드 스토리</a></li>
					<!--JSP파일로 이동 시 경로 바꾸기-->
					<li><a href="Login.jsp">마이펫케어</a></li>
					<li><a href="Login.jsp">펫다이어리</a></li>
					<li><a href="catGoods.jsp">반려묘용품</a></li>
					<li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
					<!--로그인, 회원가입-->
					<li><a href="Login.jsp"><img src="./image/login.png"
							width="20px" height="20px;"></a></li>
					<li><a href="Join.jsp"><img src="./image/join.png"
							width="25px" height="25px;"></a></li>

					<%
					} else {
					// 로그인 성공
					if (user.getId().equals("admin")) {
						// 계정이 admin인지 확인
					%>
					<li><a href="brandStory.jsp">브랜드 스토리</a></li>
					<!--JSP파일로 이동 시 경로 바꾸기-->
					<li><a href="catGoods.jsp">반려묘용품</a></li>
					<li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
					<!--관리자페이지-->
					<li><a href="adminMain.jsp"><img
							src="./image/adminpage.png" width="25px" height="25px;"></a></li>

					<%
					} else {
					// 계정이 일반 계정인 경우
					%>
					<li><a href="brandStory.jsp">브랜드 스토리</a></li>
					<!--JSP파일로 이동 시 경로 바꾸기-->
					<li><a href="graphPage.jsp">마이펫케어</a></li>
					<li><a href="calendar_main.jsp">펫다이어리</a></li>
					<li><a href="catGoods.jsp">반려묘용품</a></li>
					<li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
					<!--로그인, 회원가입-->
					<li><a href="members_update.jsp">회원정보 수정</a></li>
					<%
					}
					}
					%>
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
	<!------------------ 지도api 삽입 코드 --------------->
	<br>
	<h2 align="center">내주변 동물병원 알아보기</h2>
	<!-- div id="map" => 지도 출력하기 위한 div / 가로, 세로폭 변경 가능 -->
	<!--   <div id="map" style="width:80%;height:400px;margin-left:200px;" ></div>  -->
	<div id="map" style="width: 100rem; height: 50rem; margin: 0 auto;"></div>
	<div class="container">
		<table class="table table-striped" align="center">
			<thead>
				<br>
				<br>
				<tr>
					<h2>근처에 있는 동물병원</h2>
					<th>No.</th>
					<th>병원명</th>
					<th>연락처</th>
					<th>위치</th>
					<th>영업시간</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>야옹 동물병원</td>
					<td>062-123-1234</td>
					<td>광주광역시 남구 봉선동</td>
					<td>24시간 연중무휴</td>
				</tr>
			</tbody>
		</table>

		<a class="btn btn-default pull-right">글쓰기</a>
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#"><img src="./image/catIcon.png" " alt=""
						width="24px"></a></li>
			</ul>
		</div>
	</div>
	<!------------------------------------------------------>
	<div class="container">
		<table class="table table-striped" align="center">
			<thead>
				<tr>
					<h2>병원방문 후기</h2>
					<th>No.</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>4</td>
					<td>야옹 동물병원 다녀온 후기 공유해요~</td>
					<td>초보집사</td>
					<td>2023-01-21</td>
				</tr>
				<tr>
					<td>3</td>
					<td>내돈내산 야옹방문 후기</td>
					<td>캔따개</td>
					<td>2023-01-14</td>
				</tr>
				<tr>
					<td>2</td>
					<td>친절한 원장님!(야옹병원)</td>
					<td>길고앵집사님</td>
					<td>2023-01-02</td>
				</tr>
				<tr>
					<td>1</td>
					<td>야옹병원 후기(위치,비용 등)</td>
					<td>냥집사</td>
					<td>2022-12-14</td>
				</tr>
			</tbody>
		</table>

		<a class="btn btn-default pull-right">글쓰기</a>
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#"><img src="./image/catIcon.png" alt=""
						width="24px"></a></li>
			</ul>
		</div>
	</div>


	<script>
		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(35.12245524274845,
					126.91605228309336),
			zoom : 17
		});

		var marker = new naver.maps.Marker({
			position : new naver.maps.LatLng(35.12245524274845,
					126.91605228309336),
			map : map
		});

		var map = new naver.maps.Map('map', mapOptions);

		///////////마커 위에 텍스트 출력 코드
		var HOME_PATH = window.HOME_PATH || '.';
		var cityhall = new naver.maps.LatLng(35.12245524274845,
				126.91605228309336), map = new naver.maps.Map('map', {
			center : cityhall.destinationPoint(0, 500),
			zoom : 17
		}), marker = new naver.maps.Marker({
			map : map,
			position : cityhall
		});

		var contentString = [ '<div class="iw_inner">', '   <h3>　회사명</h3>',
				'   <p>　주소　<br />', '    　전화번호 <br />', '</div>'

		].join('');

		var infowindow = new naver.maps.InfoWindow({
			content : contentString
		});

		naver.maps.Event.addListener(marker, "click", function(e) {
			if (infowindow.getMap()) {
				infowindow.close();
			} else {
				infowindow.open(map, marker);
			}
		});

		infowindow.open(map, marker);

		/////////위도, 경도 위치 고정 코드 삽입////
		///봉선동 이마트 주소 : 위도는 35.12245524274845, 경도는 126.91605228309336 입니다    
		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(35.12245524274845,
					126.91605228309336),
			zoom : 15
		});
	</script>
</body>
</html>