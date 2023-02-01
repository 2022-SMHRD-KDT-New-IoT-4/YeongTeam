<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>육묘일기 캘린더 메인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/diary_calendar/css/monthly.css">
   
   <style type="text/css">
      body {
         font-family: Calibri;
         background-color: #f0f0f0;
         padding: 0em 1em;
      }
      #mycalendar {
         width: 100%;
         margin: 2em auto 0 auto;
         max-width: 80em;
         border: 1px solid #666;
      }
   </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
     <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
     <link rel = "stylesheet" href = "Main.css">
    </head>
    
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
          <!-- 메인페이지 우측 상단의 이동란
              아직 안정해져서 href 안바꿈
          브랜드스토리 제외하고는 로그인 시 확인가능 248/280/322-->
    
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
      <h2>My Pet Diary</h2><br>
      <div class="spanTag">
		<h3 align="center">오늘 당신의 반려묘는 어떤 하루를 보냈나요?</h3> 
      </div>
    </div>
  
  <!-- ---------------- -->

<div class="monthly" id="mycalendar"></div>
  <script type="text/javascript" src="${pageContext.request.contextPath}/diary_calendar/js/jquery.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/diary_calendar/js/monthly.js"></script>
   <script type="text/javascript">
   var sampleEvents = {
   "monthly": [
      {
      "id": 1,
      "name": 'foot',
      "startdate": "2023-01-19",
      "enddate": "2023-01-19",
      "color": "#FFFFFF"
      },
      {
      "id": 2,
      "name": "Test encompasses month",
      "startdate": "2023-01-01",
      "enddate": "2023-01-01",
      "starttime": "12:00",
      "endtime": "2:00",
      "color": "#FFFFFF"
      },
      {
      "id": 3,
      "name": "Test single day",
      "startdate": "2023-01-17",
      "enddate": "",
      "starttime": "",
      "endtime": "",
      "color": "#FFFFFF"
      // "url": "https://www.google.com/" 
      },
      {
      "id": 4,
      "name": "Test",
      "startdate": "2023-01-03",
      "enddate": "2023-01-03",
      "starttime": "12:00",
      "endtime": "2:00",
      "color": "#FFFFFF",
      // "url": ""
      }
   ]};

   $(window).load( function() {
      $('#mycalendar').monthly({
         mode: 'event',
         dataType: 'json',
         events: sampleEvents
      });
   });
   </script>
   
   <br>
   <br>
    <%
		List<Cat_DiaryDTO> list = (List)session.getAttribute("list");
		int count = (int)session.getAttribute("count");
	%>
      <!-- <div style="width: 500px; height: 50px; border: 2px solid black; text-align: center; margin-left: 900px;">이번 달 작성한 육묘일기  :  4건</div>
      <div style="width: 500px; height: 50px; border: 2px solid black; text-align: center; margin-left: 900px;">총 작성한 육묘일기  :  32건  -->
      <section class="content" align="center">
      <div class="flexbox"  style="border: 2px">
      	<h2>이번 달 작성한 육묘일기  :  <%=count %>건</h2>
      	<h2>총 작성한 육묘일기  :  <%=list.size() %>건</h2>
  	  </div>  
  	  </section>
         <!-- 대강 넘어가는 것만 모려고 만든 폼태그 이동 확인 완 -->
         <form action="#" method="post" >
            <!--  <input type="submit" formaction="catdiary_insert.jsp" name="write" value="육묘일기 작성하기" style="margin-top: 10%;">
            <input type="submit" formaction="Diary_Select.do"  name="read" value="육묘일기 둘러보기" style="margin-top: 10%;"> -->
            <input type="submit" formaction="catdiary_insert.jsp" name="write" value="육묘일기 작성하기">
            <input type="submit" formaction="Diary_Select.do"  name="read" value="육묘일기 둘러보기">
         </form>
         <br>
         <br>
         
      </div>
      </div>

</body>
</html>