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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7tyns3rmqr"></script>
	
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
		<h1>Cat Days <img src="./image/title.png" width="100px"></h1>
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
					<td>루나동물병원</td>
					<td>0507-1385-7500 </td>
					<td>광주 남구 봉선2로 53 1층</td>
					<td>평일: 10:00~19:00 
						<br>토요일: 10:00~17:00 
						<br>일요일 정기휴무
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>VI센트럴동물병원</td>
					<td>062-682-7553</td>
					<td>광주 남구 봉선로 198 3층</td>
					<td>평일: 10:00~20:00 
						<br>토요일: 10:00~20:00 
						<br>일요일 정기휴무
					</td>
				</tr>
				<tr>
					<td>3</td>
					<td>청담동물병원</td>
					<td>0507-1373-1075</td>
					<td>광주 남구 봉선로 205 1층 110호</td>
					<td>평일: 09:30~19:30 
						<br>토요일: 09:30~16:30 
						<br>일요일 정기휴무
					</td>
				</tr>
				<tr>
					<td>4</td>
					<td>봉선동물병원</td>
					<td>062-673-7585</td>
					<td>광주 남구 봉선중앙로 94</td>
					<td>평일: 09:30~18:30 
						<br>주말 정기휴무
					</td>
				</tr>
				<tr>
					<td>5</td>
					<td>24시봉선아이동물 메디컬센터</td>
					<td>062-412-7500</td>
					<td>광주 남구 봉선로 77 천송빌딩 1,2층</td>
					<td>매일: 00:00~24:00</td>
				</tr>
				<tr>
					<td>6</td>
					<td>고려동물병원</td>
					<td>062-652-7585</td>
					<td>광주 남구 용대로 154-2 고려동물병원</td>
					<td>평일: 09:00~19:00 
						<br>토요일: 09:30~17:00 
						<br>일요일 정기휴무
					</td>
				</tr>
				<tr>
					<td>7</td>
					<td>늘푸른 동물병원</td>
					<td>062-672-7975</td>
					<td>광주 남구 봉선로 115</td>
					<td>평일: 09:30~18:30 
						<br>토요일: 09:30~16:00 
						<br>일요일 정기휴무
					</td>
				</tr>
				<tr>
					<td>8</td>
					<td>비타동물의료센터</td>
					<td>062-675-7600</td>
					<td>광주 남구 봉선로 21</td>
					<td>평일: 10:00~22:00 
						<br>주말: 10:00~19:00
						<br>격주 수요일 휴무
					</td>
				</tr>
				<tr>
					<td>9</td>
					<td>최광호동물병원</td>
					<td>062-673-4047</td>
					<td>광주 남구 방림로 10</td>
					<td>평일: 09:30~19:00
						<br>토요일: 09:30~17:00 
						<br>일요일 정기휴무
					</td>
				</tr>
				<tr>
					<td>10</td>
					<td>은하수동물병원</td>
					<td>062-716-4282</td>
					<td>광주 남구 서문대로 665</td>
					<td>평일: 09:30~19:00 
						<br>토요일: 09:30~17:00 
						<br>일요일 정기휴무
					</td>
				</tr>
			</tbody>
		</table>

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
					<td>1</td>
					<td>야옹 동물병원 다녀온 후기 공유해요~</td>
					<td>초보집사</td>
					<td>2023-01-21</td>
				</tr>
				<tr>
					<td>2</td>
					<td>내돈내산 야옹방문 후기</td>
					<td>캔따개</td>
					<td>2023-01-14</td>
				</tr>
				<tr>
					<td>3</td>
					<td>친절한 원장님!(야옹병원)</td>
					<td>길고앵집사님</td>
					<td>2023-01-02</td>
				</tr>
				<tr>
					<td>4</td>
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
/////// 진우씨 지도 API 코드 시작지점//////////////////////////
	 $(function() {
       
       initMap();
       
    });
    

    function initMap() { 
       
       var areaArr = new Array();  // 지역을 담는 배열 ( 지역명/위도경도 )
       areaArr.push(
             /*지역구 이름*/         /*위도*/               /*경도*/            
    		   {location : '청담동물병원'+'<br>'+'0507-1385-7500' , lat : '35.122823' , lng : '126.917700'},  
               {location : '루나동물병원'+'<br>'+'0507-1385-7500' , lat : '35.126001' , lng : '126.912470'},  
               {location : 'VI센트럴동물병원'+'<br>'+'062-682-7553' , lat : '35.122229' , lng : '126.916033'},  
               {location : '봉선동물병원'+'<br>'+'062-673-7585' , lat : '35.122229' , lng : '126.916033'},  
               {location : '24시봉선아이동물'+'<br>'+'메디컬센터'+'<br>'+'062-412-7500', lat : '35.126662' , lng : '126.905855'},  
               {location : '고려동물병원'+'<br>'+'062-652-7585' , lat : '35.129822' , lng : '126.918379'},  
               {location : '늘푸른 동물병원'+'<br>'+'062-672-7975' , lat : '35.124733' , lng : '126.907784'},  
               {location : '비타동물의료센터'+'<br>'+'062-675-7600' , lat : '35.131273' , lng : '126.903318'},  
               {location : '최광호동물병원'+'<br>'+'062-673-4047' , lat : '35.133794' , lng : '126.918949'},  
               {location : '은하수동물병원'+'<br>'+'062-716-4282' , lat : '35.119171' , lng : '126.898643'},  
          
       );
 
    
   let markers = new Array(); // 마커 정보를 담는 배열
   let infoWindows = new Array(); // 정보창을 담는 배열
/////////////////진우씨 지도 API 코드 마지막 지점 /////////////////////	
	
	
/////////위도, 경도 위치 고정 코드 삽입////
///루나동물병원을 지도 고정점으로 설정함    
		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(35.126001, 126.912470),
			zoom : 15
		});
 //////////////////////진우씨 두번째 코드 삽입 시작
		   for (var i = 0; i < areaArr.length; i++) {
			      // 지역을 담은 배열의 길이만큼 for문으로 마커와 정보창을 채워주자 !

			       var marker = new naver.maps.Marker({
			           map: map,
			           title: areaArr[i].location, // 지역구 이름 
			           position: new naver.maps.LatLng(areaArr[i].lat , areaArr[i].lng) // 지역구의 위도 경도 넣기 
			       });
			       
			       /* 정보창 */
			       var infoWindow = new naver.maps.InfoWindow({
			           content: '<div style="width:200px;text-align:center;padding:10px;"><b>' + areaArr[i].location + '</b><br></div>'
			       }); // 클릭했을 때 띄워줄 정보 HTML 작성
			       
			       markers.push(marker); // 생성한 마커를 배열에 담는다.
			       infoWindows.push(infoWindow); // 생성한 정보창을 배열에 담는다.
			   }
			    
			    
			    function getClickHandler(seq) {
			      
			            return function(e) {  // 마커를 클릭하는 부분
			                var marker = markers[seq], // 클릭한 마커의 시퀀스로 찾는다.
			                    infoWindow = infoWindows[seq]; // 클릭한 마커의 시퀀스로 찾는다

			                if (infoWindow.getMap()) {
			                    infoWindow.close();
			                } else {
			                    infoWindow.open(map, marker); // 표출
			                }
			          }
			       }
			    
			    for (var i=0, ii=markers.length; i<ii; i++) {
			       console.log(markers[i] , getClickHandler(i));
			        naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i)); // 클릭한 마커 핸들러
			    }
			}
			  var map = new naver.maps.Map('map', mapOptions);
//////////////////////////////////////////////////////

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

		var contentString = [ '<div class="iw_inner">',
							'   <h3>　회사명</h3>',
							'   <p>　주소　<br />', 
							'    　전화번호 <br />', 
							'</div>'

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

	</script>
</body>
</html>