<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
<%@page import="java.util.List"%>
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
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
  
 
  <link rel ="stylesheet" href ="Main.css">
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
        <img src="./image/ransom.png" width="29px"style="margin-top:10px;">
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
      <!-- 메인페이지 우측 상단의 이동란-->
        <li><a href="Main.do">브랜드 스토리</a></li>
		<li><a href="Tltuse_Select.do">마이펫케어</a></li>
		<li><a href="Calender_Main.do">펫다이어리</a></li>
		<li><a href="catGoods.jsp">반려묘용품</a></li>
		<li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
		<li><a href="members_update.jsp">회원정보 수정</a></li>
      </ul>
    </div>
  </nav>
  
  <div class="jumbotron text-center">
    <!-- 홈페이지 이름 작성 -->
    <h1>Cat Days  <img src="./image/title.png" width="100px"></h1> 
    <p>for my precious cat</p> 
    </div>
</body>
<!--Head End -->

<body>
    <div class="bookcover">
        <div class="bookdot">
            <div class="page">
                <div class="column2"  align="center">
                    <div class="change" >
                   <!--  <div style="width: 800px; height: 80px; margin-left: 650px;">  -->
                        <!--diary-->
                        <div class="main-content" align="left">
                            <div class="calendar">
                                <div class="day" id="bold-text">02.01<br>WED</div>
                                <div class="month" id="basic-text">
                                    <span>1 2 3</span> 
                                    <span style="color: blue;">4</span> 
                                    <span style="color: red;">5</span> 6 7 8 9 10
                                    <span style="color: blue;">11</span> 
                                    <span style="color: red;">12</span> 13 14 15 16 17 
                                    <span style="color: blue;">18</span> 
                                    <span style="color: red;">19</span> 20 21 22 23 24
                                    <span style="color: blue;">25</span>
                                    <span style="color: red;">26</span> 
                                    <span>27 28</span>
                                </div>
                            </div>
                            <div class="diary">
                            <%
								List<Cat_DiaryDTO> list = (List)session.getAttribute("list");
							%>
                            <form>
                            <%
                             for(int i=0; i<list.size(); i++){%>
                            <div class="diary-box">
                                <div class="diary-date" id="bold-text"><%= list.get(i).getD_dt() %>
                                  <input type="radio"  value="<%=i %>" name="update" id="choice" style="align-items: flex-end;">  
                                </div>
                                <%if(list.get(i).getD_file() !=null){ %>
                                <div align="center">
                                    <img src="<%=list.get(i).getD_file() %>" width="300px">
                                </div>
                                <% } %>
                                <div class="diary-title"  >
                                	<%= list.get(i).getD_title() %>
                                
                                </div>
                                <div class="diary-text" id="basic-text">
                                	
                                	<%= list.get(i).getD_content().replace("\r\n","<br>") %>
                                </div>
                            </div>
                           <% } %>
                            
                            
                            
                            
                            
                            
                            
                                <input type="submit" value="삭제하기" formaction="Diary_Delete.do" style="float: right">  
                           <%
								String delete = (String)request.getAttribute("delete");
							%>                              
                         <%if(delete != null){ %>       
                         <!-- 삭제 버튼 선택시 알림창 출력 -->
                        <script>
                    	Swal.fire({
                    		type : "success",
                    		title : "게시글삭제 &nbsp; 성공",
                    		text : "선택한 게시글이 삭제되었습니다",
                    	});
                    	 </script>
                    	 
                        <!-- 
                         deleteAlarm({
                          position: 'top-end', -> 이거 적용하지 않음
                          position: 'center',
                          icon: 'success',
                          title: '선택한 게시글이 삭제되었습니다',
                          showConfirmButton: false,
                          timer: 1500
                        })
                        -->
 
                         
                        <%}%>
                                
                                <input type="submit" value="수정하기" formaction="catdiary_update.jsp" style="float: right">
                                <input type="submit" value="이전페이지로 이동" formaction="calendar_main.jsp" style="float: right"> 
                                <br>
                                <br>
								</form>
                        </div>
                    </div>
                 </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>