<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지_회원목록조회</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="Main.css">
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
           <img src="/CatDays/img/ransom.png" width="29px" style="margin-top:10px;">
         </div>
         <div class="collapse navbar-collapse" id="myNavbar">
           <ul class="nav navbar-nav navbar-right"> 
   
              <li><a href="brandStory.jsp">브랜드 스토리</a></li>
                    <!--JSP파일로 이동 시 경로 바꾸기-->
              <li><a href="catGoods.jsp">반려묘용품</a></li>
                    <!--관리자페이지-->
              <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
             <li><a href="adminMain.jsp">관리자 페이지<img src="./image/adminpage.png" width="25px" height="25px;"></a></li>
           </ul>
         </div>
       </div>
     </nav>
   
     <div class="jumbotron text-center"> 
       <!-- 홈페이지 이름 작성 -->
       <h1>Cat Days <img src="/CatDays/img/title.png" width="100px"></h1>
       <p>for my precious cat</p>
     </div>

    <nav class ="navbar navbar-default">
        <div class="navbar-header"> <!-- 홈페이지의 로고 -->
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            <a class ="navbar-brand">관리자 페이지</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
               <li><a href="adminMain.jsp">회원목록 조회</a></li> <!-- 메인 페이지 -->
               <li><a href="admin_catdiary_delete.jsp">삭제된 육묘일기 데이터 관리</a></li>
               <li><a href="admin_catdiary_selectAll.jsp">육묘일기 관리</a></li>
            </ul>
        </div>
    </nav>

<!--회원목록 조회 페이지-->
<br>
    <div class="container">
        <table class="table table-striped" align="center">
          <thead>
              <tr><h2>회원목록 조회</h2>
                  <th>No.</th>
                  <th>ID</th>
                  <th>ADDRESS</th>
                  <th>JOINDATE</th>
                  <th>CAT &nbsp; NAME</th>
                  <th>CAT &nbsp; BIRTH</th>
                  <th>CAT &nbsp; WEIGHT</th>
              </tr>
          </thead>
          <tbody>
            <tr>
              <td>5</td>
              <td>ccccccatttt</td>
              <td>광주광역시 동구 학동</td>
              <td>2023.01.25.</td>
              <td>샛별이</td>
              <td>2020.07.12.</td>
              <td>4.1kg</td>
            </tr>
            <tr>
              <td>4</td>
              <td>dreamyDragon</td>
              <td>광주광역시 서구 풍암동</td>
              <td>2023.01.25.</td>
              <td>몽룡이</td>
              <td>2021.03.14.</td>
              <td>5.6kg</td>
            </tr>
            <tr>
              <td>3</td>
              <td>220.mari</td>
              <td>광주광역시 광산구 수완동</td>
              <td>2023.01.25.</td>
              <td>마리</td>
              <td>2014.09.16.</td>
              <td>6.2kg</td>
            </tr>
            <tr>
              <td>2</td>
              <td>220.lio</td>
              <td>광주광역시 광산구 수완동</td>
              <td>2023.01.25.</td>
              <td>리오</td>
              <td>2022.04.13.</td>
              <td>5.4kg</td>
            </tr>
            <tr>
              <td>1</td>
              <td>admin</td>
              <td>광주광역시 남구 송암동</td>
              <td>2022.12.29.</td>
              <td>해피</td>
              <td>2020.11.15.</td>
              <td>3kg</td>
            </tr>
          </tbody>
        </table>
    </div> 
<!--페이지 이동 버튼-->
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
        <li><a href="#"><img src="./community/img/catIcon.png" alt="" width="24px"></a></li>
      </ul>
    </div>
          
          
          
          <script src="js/jquery-3.1.1.js"></script>
          <script src="js/bootstrap.js"></script>






</body>
</html>