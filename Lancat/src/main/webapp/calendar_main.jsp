<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset='utf-8'>
<head>
    <title>Monthly - Event Tests</title>
   <link rel="stylesheet" href="./css/monthly.css">
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
<body>
  <!--Head Start -->
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
        <img src="./img/ransom.png" width="29px"style="margin-top:10px;">
      </div>
   </div>
    <div class="collapse navbar-collapse" id="myNavbar">
       <ul class="nav navbar-nav navbar-right">
         <li><a href="brandStory.jsp">브랜드 스토리</a></li>
         <!--JSP파일로 이동 시 경로 바꾸기-->
         <li><a href="graphPage.jsp">마이펫케어</a></li>
         <li><a href="calendar_main.jsp">펫다이어리</a></li>
         <li><a href="catGoods.jsp">반려묘용품</a></li>
         <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
         <!--로그인, 회원가입-->
         <li><a href="members_update.jsp">회원정보 수정</a></li>
         </ul>
    </div>
  </nav>
  
  <div class="jumbotron text-center">
    <!-- 홈페이지 이름 작성 -->
    <h1>Cat Days  <img src="./img/title.png" width="100px"></h1> 
    <p>for my precious cat</p>
  </div>
<!--Head End -->

<h1 align="center">My Pet Diary</h1>
<h3 align="center">오늘 당신의 반려묘는 어떤 하루를 보냈나요?</h3>
<div class="monthly" id="mycalendar"></div>
   <script type="text/javascript" src="js/jquery.js"></script>
   <script type="text/javascript" src="js/monthly.js"></script>
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
   <br>
   <br>
      <div style="padding-bottom: 5%;">   
      <div style="width: 500px; height: 50px; border: 2px solid black; text-align: center; margin-left: 900px;">이번 달 작성한 육묘일기 : 4건</div>
      <div style="width: 500px; height: 50px; border: 2px solid black; text-align: center; margin-left: 900px;">총 작성한 육묘일기 : 32건</div>
         <!-- 대강 넘어가는 것만 모려고 만든 폼태그 이동 확인 완 -->
         <form >
            <input type="submit" formaction="catdiary_insert.jsp" name="write" value="육묘일기 작성하기" style="margin-top: 10%;">
            <input type="submit" formaction="Diary_Select.do"  name="read" value="육묘일기 둘러보기" style="margin-top: 10%;">
         </form>
         
         
      </div>
      </div>

</body>
</html>