<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고양이 IoT 화장실 데이터</title>
<script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series/series-label.js"></script>

    <link rel = "stylesheet" href = "Main.css">
</head>
<body>

    <!DOCTYPE html>
    <html lang="en">
    <head>
      <!-- Theme Made By www.w3schools.com -->
      <title>Bootstrap Theme Company Page</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
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
    
          <li><a href="brandStory.jsp">브랜드 스토리</a></li>
                    <!--JSP파일로 이동 시 경로 바꾸기-->
                    <li><a href="graphPage.jsp">마이펫케어</a></li>
                    <li><a href="./diary_calendar/calendar_main.jsp">펫다이어리</a></li>
                    <li><a href="catGoods.jsp">반려묘용품</a></li>
                    <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
                    <!--로그인, 회원가입-->
                    <li><a href="members_update.jsp">회원정보 수정</a></li>
            
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="jumbotron text-center">
      <!-- 홈페이지 이름 작성 -->
      <br>
      <h2>반려묘케어</h2><br>
      <div class="spanTag">
        <!--★★★ 글씨 감성적인 문구 추가.....-->
        <h3>구름이의 상태에 변화가 생겼어요! 😿 건강 상태를 확인해보세요!</h3> 
      </div>
    </div>



    <!-- 화장실 데이터 차트 (데이터 임의로 넣어둠!)-->

    <div id="poop-graph"></div>
<script>

   Highcharts.chart('poop-graph',{
    title:{
        text:'고양이 대소변 데이터'
    },
    subtitle:{
        text:'IoT 데이터를 통한 고양이 대소변 그래프'
    },

    // y축의
    yAxis:{
        title:{
            text:'일일 소변 횟수'
        },
        max:80,
        min:0
    },

    xAxis:{
        title:{
            text:'몸무게 데이터'
        },
    },

    // x축의 범례
    legend:{
        layout:'vartical',
        align:'right',
        verticalAlign:'middle'
    },

    // series : 차트데이터
    series:[{
        name: '일일 소변횟수',
        data:[4,6,5,2,3,4,6],
        
       
    },{
        name: '몸무게 kg',
        data:[3.12,3,4,3,3.12,3.34,3.3],
        zones:[
            {
            color:'rgb(144, 81, 226)'
        },
    ]

    },{
      name: '체류시간 (초)',
        data:[30,45,27,18,49,34,40]
    }],

   });



</script>

</body>
</html>