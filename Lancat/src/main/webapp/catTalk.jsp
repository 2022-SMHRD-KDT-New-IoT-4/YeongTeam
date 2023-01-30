<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <!-- Theme Made By www.w3schools.com -->
      <title>랜선집사들 🐾Cat Days🐾</title>
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
             <a class="navbar-brand" href="Main.jsp">랜선집사들</a>
        <img src="./image/ransom.png" width="29px" style="margin-top:10px;">
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right"> 
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
    <h1>Cat Days <img src="./image/title.png" width="100px"></h1>
    <p>for my precious cat</p>
  </div>
</body>   
<!-------------------------- 여기까지가 각 페이지마다 뚜껑이 될 페이지! -------------------->
<body>
  <nav class ="navbar navbar-default">
    <div class="navbar-header"> <!-- 홈페이지의 로고 -->
      <button type="button" class="navbar-toggle collapsed"
              data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
              aria-expand="false">
        <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
        <span class ="icon-bar"></span>
        <span class ="icon-bar"></span>
      </button>
      <a class ="navbar-brand">병원정보 커뮤니티</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="catEncyclopedia_main.jsp">반려백과</a></li> <!-- 메인 페이지 -->
        <li><a href="catMap.jsp">내주변 동물병원 알아보기</a></li>
        <li><a href="catTalk.jsp">반려묘 건강고민</a></li>
      </ul>
    </div>
  </nav>
    
    
      
      <!---------------------------------------------------->

<!--반려묘 건강고민 페이지-->
<div class="container">
    <table class="table table-striped" align="center">
      <thead>
          <tr><h2>반려묘 건강고민</h2>
              <th>No.</th>
              <th>제목</th>
              <th>작성자</th>
              <th>날짜</th>
          </tr>
      </thead>
      <tbody>
        <tr>
          <td>157</td>
          <td>반려묘 피부가 가려운 이유는?</td>
          <td>랜냥이</td>
          <td>2023.01.30</td>
        </tr>
        <tr>
          <td>156</td>
          <td>반려묘 털이 빠지는 이유는?</td>
          <td>냥냥이</td>
          <td>2023.01.29</td>
        </tr>
        <tr>
          <td>155</td>
          <td>반려묘의 노화징후는 어떻게 알 수 있을까요?</td>
          <td>츄르덕후</td>
          <td>2023.01.27</td>
        </tr>
        <tr>
          <td>154</td>
          <td>노령묘에게 필요한 처방식</td>
          <td>젖소냥</td>
          <td>2023.01.27</td>
        </tr>
        <tr>
          <td>153</td>
          <td>노령묘에게서 발생할 수 있는 질환</td>
          <td>삼색냥</td>
          <td>2023.01.25</td>
        </tr>
        <tr>
          <td>152</td>
          <td>반려묘 방광질환 관리</td>
          <td>냐옹좌</td>
          <td>2023.01.23</td>
        </tr>
        <tr>
          <td>151</td>
          <td>반려묘 요로기계 질환은 어떻게 치료하나요?</td>
          <td>고영희</td>
          <td>2023.01.21</td>
        </tr>
        <tr>
          <td>150</td>
          <td>반려묘에게 요실금 증상이 있나요?</td>
          <td>냐용이</td>
          <td>2023.01.20</td>
        </tr>
        <tr>
          <td>149</td>
          <td>반려묘의 소화질환을 예방하는 방법은?</td>
          <td>캣초딩</td>
          <td>2023.01.19</td>
        </tr>
        <tr>
          <td>148</td>
          <td>수술 후 반려묘에게 사료 급여하는 방법</td>
          <td>아깽이</td>
          <td>2023.01.19</td>
        </tr>
        <tr>
          <td>147</td>
          <td>반려묘 소화기계 건강과 영양구성</td>
          <td>고앵이</td>
          <td>2022.01.17.</td>
        </tr>
        <tr>
          <td>146</td>
          <td>반려묘 키우는데 드는 비용</td>
          <td>고냥이</td>
          <td>2022.01.15.</td>
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
        <li><a href="#"><img src="./img/catIcon.png" alt="" width="24px"></a></li>
      </ul>
    </div>
  </div> 
  
  
  
  <script src="js/jquery-3.1.1.js"></script>
  <script src="js/bootstrap.js"></script>
  
  
  </body>
  </html>
  