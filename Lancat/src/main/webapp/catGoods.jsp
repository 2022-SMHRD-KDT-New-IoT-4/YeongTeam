<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜선집사들 🐾Cat Days🐾</title>
      <title>Forty by HTML5 UP</title>
      <meta charset="UTF-8" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="assets/css/main.css" />
      
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
            <a class="navbar-brand" href="#myPage" >랜선집사들</a>
            <img src="./img/ransom.png" width="29px"style="margin-top:10px;">
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
          <!-- 메인페이지 우측 상단의 이동란
              아직 안정해져서 href 안바꿈
          브랜드스토리 제외하고는 로그인 시 확인가능 248/280/322-->
    
            <li><a href="#BrandStory">브랜드 스토리</a></li>
            <!--JSP파일로 이동 시 경로 바꾸기-->
            <li><a href="http://121.147.185.221:5500/CatDays/MyPetCare.html">마이펫케어</a></li>
            <li><a href="http://121.147.185.221:5500/CatDays/diaryData.html">펫다이어리</a></li>
            <li><a href="http://121.147.185.221:5500/CatDays/catGoods.html">반려묘용품</a></li>
            <li><a href="http://121.147.185.221:5500/CatDays/catEncyclopedia_main_main.html">커뮤니티</a></li>
            <!--로그인, 회원가입-->
        <li><a href="#contact"><img src="/CatDays/img/login.png" width="20px" height="20px;"></a></li>
        <li><a href="#contact"><img src="/CatDays/img/join.png" width="25px" height="25px;"></a></li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="jumbotron text-center">
      <!-- 홈페이지 이름 작성 -->
      <br>
      <h2>반려묘용품</h2><br>
      <div class="spanTag">
        <!--★★★ 글씨 사이즈를 바꾸고 싶어요.....-->
        <span><strong>Pethroom와 함께하는 Best Goods 페이지</strong></span> 
      </div>
    </div>



    <div class="flex-first">
        <div class="flex-item" onclick="location.href='https://pethroom.com/product/detail.html?product_no=18&cate_no=205&display_group=1';">
            <img src="/CatDays/img/goodsPage/sand.PNG" width="400" height="400">
        <span><strong>Pethroom</strong></span>
        <p>더스트 프리 벤토나이트 오리지널</p></div>

        <div class="flex-item" onclick="location.href='https://pethroom.com/product/detail.html?product_no=165&cate_no=205&display_group=1';">
            <img src="/CatDays/img/goodsPage/bentonite.PNG" width="400" height="400">
            <span><strong>Pethroom</strong></span>
            <p>오도어 프리 벤토나이트 오리지널</p></div>
        <div class="flex-item color-gray">
        <img src="/CatDays/img/goodsPage/Forest.PNG" width="400" height="400">
        <span><strong>Pethroom</strong></span>
        <p>오도어 프리 벤토나이트 포레스트</p></div>
        <div class="flex-item color-gray">
            <img src="/CatDays/img/goodsPage/TOFU.PNG" width="400" height="400">
            <span><strong>Pethroom</strong></span>
            <p>파인 크랙 두부 모래(오리지널/녹차)</p></div>


        
    </div>
    <br>

    <div class="flex-second">
        <div class="flex-item color-gray">
        <img src="/CatDays/img/goodsPage/spray.PNG" width="400" height="400">
        <span><strong>Pethroom</strong></span>
        <p>펫 닥터 스프레이 플러스</p></div>

        <div class="flex-item color-gray">
        <img src="/CatDays/img/goodsPage/tissue.PNG" width="400" height="400">
        <span><strong>Pethroom</strong></span>
        <p>마일드 클린 티슈</p></div>
        
        <div class="flex-item color-gray">
            <img src="/CatDays/img/goodsPage/scoop.PNG" width="400" height="400">
            <span><strong>Pethroom</striong></span>
            <p>올 캐치 스쿱(벤토/두부)</p></div>

        <div class="flex-item color-gray">
            <img src="/CatDays/img/goodsPage/powder.PNG" width="400" height="400">
            <span><strong>Pethroom</strong></span>
            <p>매직 캣 리터 파우더</p></div>
        
    </div>

</body>
</html>