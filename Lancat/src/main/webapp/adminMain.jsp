<%@page import="com.smhrd.model.MembersDTO"%>
<%@page import="java.util.List"%>
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
           <img src="./image/ransom.png" width="29px" style="margin-top:10px;">
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
       <h1>Cat Days <img src="./image/title.png" width="100px"></h1>
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
               <li><a href="AdminDiary_Delete.do">삭제된 육묘일기 데이터 관리</a></li>
               <li><a href="AdminDiary_Select.do">육묘일기 관리</a></li>
            </ul>
        </div>
    </nav>
    <%
	 	List<MembersDTO> list = (List<MembersDTO>)request.getSession().getAttribute("memberlist");
	%>

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
          <% int n = 1;
          	for(MembersDTO dto :list){
				out.print("<tr>");
				out.print("<td>"+ n++ +"</td>");
				out.print("<td>"+dto.getId()+"</td>");
				out.print("<td>"+dto.getAddr()+"</td>");
				out.print("<td>"+dto.getJoinDate()+"</td>");
				out.print("<td>"+dto.getCat_Name()+"</td>");
				out.print("<td>"+dto.getCat_Birth()+"</td>");
				out.print("<td>"+dto.getCat_Wt()+"</td>");
				out.print("</tr>");
				} %>
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
        <li><a href="#"><img src="./image/catIcon.png" alt="" width="24px"></a></li>
      </ul>
    </div>
          
          
          
          <script src="js/jquery-3.1.1.js"></script>
          <script src="js/bootstrap.js"></script>






</body>
</html>