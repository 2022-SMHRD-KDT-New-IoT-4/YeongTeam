<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>육묘일기 수정및삭제하기</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link rel = "stylesheet" href = "Main.css">

  <link rel="stylesheet" href="catdiary_insert.css">
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
         <li><a href="calendar_main.jsp">펫다이어리</a></li>
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
    <h1>Cat Days  <img src="./image/title.png" width="100px"></h1> 
    <p>for my precious cat</p> 
    </div>
<!--Head End -->

	<style>
    th, td {
        text-align: center;
        font-size: 18px;
    }
    </style>
   
    
    <!-- 육묘일기 작성하는 폼 -->
     <%
		List<Cat_DiaryDTO> list = (List)session.getAttribute("list");
		int index = Integer.parseInt(request.getParameter("update"));
		Cat_DiaryDTO data = list.get(index);
		session.setAttribute("update", data);
	%>
    <form action="Diary_Update.do" method="post">
    <h2 align="center">육묘일기 수정하기</h2>
    <table border="1" width=500 align="center">
        <tr>
            <th colspan="2" height="50px">오늘 내 반려묘는 어떤 하루를 보냈나요?</th>
        </tr>
        <tr>
            <td width=65 >
                <select style="width: 100%;" >
                    <option>기쁨</option>
                    <option>슬픔</option>
                    <option>아픔</option>
                </select>
            </td>
            <td >
             <!--여기에 db 불러오는 코드 입력 작성했던 제목-->
                <input type="text" name="d_title" value=<%=data.getD_title() %> maxlength=20 style="width:100%; height: 100%;">
            </td>
        </tr>
        <tr>
            <td colspan="2" height=400>
                <!--여기에 db 불러오는 코드 입력 내용-->
                <textarea name="d_content"  style="width: 100%; height: 100%"><%=data.getD_content() %></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align=right>
            <input type="submit" name="makePost" value="업로드하기">
            <input type="file" name="d_file" >
              
            </td>
        </tr>
    </table>
    </form>
   <a class="btn btn-default pull" href = "Diary_Select.do">이전페이지로 이동</a>
    <br>
    <br>
    <br>
    </body>
    </html>