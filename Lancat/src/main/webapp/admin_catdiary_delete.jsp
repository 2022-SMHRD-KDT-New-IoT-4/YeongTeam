<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title>관리자페이지_삭제된 데이터관리</title>
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
		List<Cat_DiaryDTO> list =(List)request.getAttribute("diary");
	%>
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
           <img src="../img/ransom.png" width="29px" style="margin-top:10px;">
         </div>
         <div class="collapse navbar-collapse" id="myNavbar">
           <ul class="nav navbar-nav navbar-right"> 
             <li><a href="Main.do">브랜드 스토리</a></li>
             <li><a href="catGoods.jsp">반려묘용품</a></li>
             <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
             <!--관리자페이지-->
             <li><a href="AdminMembers_SelectAll.do"><img src="./image/adminpage.png" width="25px" height="25px;"></a></li>
           </ul>
         </div>
       </div>
     </nav>
   
     <div class="jumbotron text-center"> 
       <!-- 홈페이지 이름 작성 -->
       <h1>Cat Days <img src="../img/title.png" width="100px"></h1>
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

<!--삭제된 데이터 관리 페이지-->
<br>
    <div class="container" id="delete">
		<form action="#" method="post">
        	<table class="table table-striped">
          		<thead>
              		<tr><h2>삭제된 육묘일기 데이터 관리</h2>
                  	<th width="100px">삭제 순번</th>
                  	<th width="100px">일기 순번</th>
                  	<th width="100px">제목</th>
                  	<th>작성 내용</th>
                  	<th>첨부파일</th>
                  	<th>작성일자</th>
                  	<th width="110px">작성자</th>
                  	<th>삭제시간</th>
              		</tr>
          		</thead>
     		<tbody>
      <%
        for(int i = 0; i<list.size(); i++){
        	%>
       <tr>
           <td><%= list.get(i).getDelete_seq() %></td>
           <td><%= list.get(i).getD_seq() %></td>
           <td><%= list.get(i).getD_title() %></td>
           <td><%= list.get(i).getD_content() %></td>
            <td><%= list.get(i).getD_file() %></td>
           <td><%= list.get(i).getD_dt() %></td>
           <td><%= list.get(i).getId() %></td>
           <td><%= list.get(i).getDelete_time() %></td>
       </tr>
      <%
        }
      %>
      		</tbody>
      	</table>
      	<a href="Main.do" >메인으로</a>
      </div>
	<br>
	<br>
    </form>
	<br>
	<br>

</body>
</html>