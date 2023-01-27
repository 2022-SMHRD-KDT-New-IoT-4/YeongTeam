<%@page import="com.smhrd.model.MembersDTO"%>
<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지_전체육묘일기 데이터관리</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="Main.css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<%
List<Cat_DiaryDTO> list = (List)request.getAttribute("user");
%>

<%--
	user 데이터 받아오는지 admin 데이터 받아오는지 확인하기!!
   List<Cat_DiaryDTO> list =(List)session.getAttribute("admin");
--%>  

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
           <a class="navbar-brand" href="#mypage">랜선집사들</a>
           <img src="./img/ransom.png" width="29px" style="margin-top:10px;">
         </div>
         <div class="collapse navbar-collapse" id="myNavbar">
           <ul class="nav navbar-nav navbar-right"> 
   
             <li><a href="#BrandStory">브랜드 스토리</a></li> 
             <!--JSP파일로 이동 시 경로 바꾸기-->
             <li><a href="http://121.147.185.221:5500/CatDays/MyPetCare.html">마이펫케어</a></li>
             <li><a href="#MypetDiary">펫다이어리</a></li>
             <li><a href="#pricing">반려묘용품</a></li>
             <li><a href="#contact">커뮤니티</a></li> 
           </ul>
         </div>
       </div>
     </nav>
   
     <div class="jumbotron text-center"> 
       <!-- 홈페이지 이름 작성 -->
       <h1>Cat Days <img src="./img/title.png" width="100px"></h1>
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
                <li><a href="#">회원목록 조회</a></li> <!-- 메인 페이지 -->
                <li><a href="#">삭제된 육묘일기 데이터 관리</a></li>
                <li><a href="#">육묘일기 관리</a></li>
            </ul>
        </div>
    </nav>

<!--전체 육묘일기 데이터 관리 페이지-->
<br>
    <div class="container" id="selectAll">
    <form action="#" method="post">
        <table class="table table-striped" align="center">
          <thead>
              <tr><h2>육묘일기 관리</h2>
                  <th>일기 순번</th>
                  <th width="100px">제목</th>
                  <th width="300px">작성내용</th>
                  <th>첨부파일</th>
                  <th>작성일자</th>
                  <th>작성자</th>
              </tr>
          </thead>
          <tbody>
          <%
        for(int i = 0; i<list.size(); i++){
        	%>
       <tr>
           <td><%= list.get(i).getD_seq() %></td>
           <td><%= list.get(i).getD_title() %></td>
           <td><%= list.get(i).getD_content() %></td>
           <td><%= list.get(i).getD_file() %></td>
           <td><%= list.get(i).getD_dt() %></td>
           <td><%= list.get(i).getId() %></td>
       </tr>
      <%
        }
      %>
          </tbody>
        </table>
    </div> 
<br>
<br>
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
    <li><a href="#"><img src="/CatDays/img/catIcon.png" alt="" width="24px"></a></li>
  </ul>
</div>


<div style="margin-left: 950px;">
   <a href="Main.do" >돌아가기</a>
    <!-- <input type="submit" name="adminSelectAll" value="돌아가기">  -->
</div>
</form>
<br>
<br>
</body>
</html>