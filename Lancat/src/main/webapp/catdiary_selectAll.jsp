<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 육묘일기 보기</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link rel = "stylesheet" href = "Main.css">

  <link rel="stylesheet" href="catdiary_selectAll.css">
  <script src="https://kit.fontawesome.com/862f1afc4c.js" crossorigin="anonymous"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
  <!-- 반응형 Nav var(Navigation Bar) 
      : 우리가 흔히 사용하는 메뉴(menu) 및 사이트로고, 여러링크 포함 -->
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
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
      <!-- 메인페이지 우측 상단의 이동란-->
        <li><a href="brandStory.jsp">브랜드 스토리</a></li>
        <!--JSP파일로 이동 시 경로 바꾸기-->
        <li><a href="graphPage.jsp">마이펫케어</a></li>
        <li><a href="./diary_calendar/calendar_main.jsp">펫다이어리</a></li>
        <li><a href="catGoods.jsp">반려묘용품</a></li>
        <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
        <!--로그인, 회원가입-->
        <li><a href="members_update.jsp">회원정보 수정</a></li>
        <!-- # 붙여서 스타일 넣어주어야 함! 넣고 빼기 정리필요 -->
      </ul>
    </div>
  </nav>
  
  <div class="jumbotron text-center">
    <!-- 홈페이지 이름 작성 -->
    <h1>Cat Days  <img src="./img/title.png" width="100px"></h1> 
    <p>for my precious cat</p> 
    </div>
<!--Head End -->

<body>
    <div class="bookcover">
        <div class="bookdot">
            <div class="page">
                <div class="column2">
                    <div style="width: 800px; height: 80px; margin-left: 650px;">
                        <!--diary-->
                        <div class="main-content">
                            <div class="calendar">
                                <div class="day" id="bold-text">01.25<br>WED</div>
                                <div class="month" id="basic-text">
                                    <span style="color: red;">1</span> 
                                    <span>2 3 4 5 6 </span> 
                                    <span style="color: blue;">7</span> 
                                    <span style="color: red;">8</span> 9 10 11 12 13 
                                    <span style="color: blue;">14</span> 
                                    <span style="color: red;">15</span>  16 17 18 19 20 
                                    <span style="color: blue;">21</span> 
                                    <span style="color: red;">22</span> 23 24 25 26 27 
                                    <span style="color: blue;">28</span> 
                                    <span style="color: red;">29</span> 
                                    <span>30 31</span>
                                </div>
                            </div>
                            <div class="diary">
                            <form>
                            <div class="diary-box">
                                <div class="diary-date" id="bold-text">2023.01.01.
                                  <input type="checkbox" name="choice" id="choice" style="align-items: flex-end;">  
                                </div>
                                <div align="center">
                                    <img src="파일합치기용/img/cat1.jpg" width="300px">
                                </div>
                                <div class="diary-text" id="basic-text">아침에 해피와 늦잠을 자고 싶었는데 <br> 해피가 꾹꾹이로 깨워주었다.<br>난 정말 행복한 집사이다.<br><br>앞으로도 지금처럼<br>아프지말고 계속 건강했으면 좋겠다.<br><br>해피야 사랑해♥</div>
                            </div>
                            
                            <div class="diary-box">
                                <div class="diary-date" id="bold-text">2023.01.03
                                    <input type="checkbox" name="choice" id="choice" style="align-items: flex-end;">
                                </div>
                                <div align="center">
                                    <img src="파일합치기용/img/cat2.webp" width="300px">
                                </div>
                                <div class="diary-text" id="basic-text">해피 정기 건강검진일<br><br>정기검진일은 늘 무섭다.<br>해피가 조금 아프다고 한다.<br>내가 대신 아파줄 수 있으면..<br><br>해피야 아프지말고 언니랑 오래오래 있어줘</div>
                            </div>
                            
                            <div class="diary-box">
                                <div class="diary-date" id="bold-text">2023.01.17
                                    <input type="checkbox" name="choice" id="choice" style="align-items: flex-end;">
                                </div>
                                <div align="center">
                                    <img src="파일합치기용/img/cat3.jpg" width="300px">
                                </div>
                                <div class="diary-text" id="basic-text">매일 해피를 두고 나서는 출근길<br>마음이 무겁다..<br><br>고양이는 외로움을 덜 탄다고 하지만<br>현관에서 기다리고 있는<br>해피의 모습을 볼 때 마다 마음이 너무 아프다.<br></div>
                            </div>
                            
                            <div class="diary-box">
                                <div class="diary-date" id="bold-text">2023.01.19
                                    <input type="checkbox" name="choice" id="choice" style="align-items: flex-end;">
                                </div>
                                <div align="center">
                                    <img src="파일합치기용/img/cat4.jpg" width="300px">
                                </div>
                                <div class="diary-text" id="basic-text">해피와 함께 본가에 내려갔다.<br>해피가 멀미하지 않아서 다행이다.<br><br>부모님도 해피를 예뻐해주셨다.<br>우리집 사랑둥이 막내♡</div>
                            </div>
                            
                            <div style="margin-top: 1900px; margin-right: 800px;">
                                <input type="submit" value="삭제하기" formaction="Main.jsp">
                                <input type="submit" value="수정하기" formaction="catdiary_update.jsp">
                                <input type="submit" value="이전페이지로 이동" formaction="Main.jsp">
                            </div>
                        
                        </form>
                        </div>
                    </div>
                 </div>
                </div>
                <br>
                <br>
                <br>
            </div>
        </div>
    </div>
</body>
</html>