<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
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
   

<!-- 개인정보 수정페이지 -->
<div class="jumbotron text-center">
    <!-- 홈페이지 이름 작성 -->
    <br>
    <h2>개인정보 수정</h2><br>
    <div class="spanTag">
      <span>아래 내용을 빠짐없이 기재해주세요. 🐾 </span> 
    </div>
  </div>

<!--승철씨 부분-->
  <!-- 자바스크립트(유효성검사 해당) -->
  <script src ="signUpjs3.js"></script> 
  <!-- 다음 우편번호찾기 API -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  </head>
  <body>
     <div id="wrap" class="wrapper">
        <form method ="post" name="join" id="join">
          <!-- 개인정보수정 타이틀부분 -->
           <header>
                <div id="header">
                 <h1 class="h_loho">
                    <span><img alt="" src="image/main.png"></span>
                 </h1>
                </div>
           </header>
  
            <div class="container">
              <div class="row_group">
            <!-- 비밀번호 입력 -->
                 <div class="userInput">
                    <h3 class="list">비밀번호</h3>
                    <span class="box int_id" ><input type="text" id="id" class="int check"
                       maxlength="20" placeholder="수정할 비밀번호를 입력하세요"></span>
                 </div>
            <!-- 주소 입력 -->
                 <div class="userInput">
                    <h3 class="list">자택주소</h3>
                    <input type="text" name="addr" id="addr" placeholder="주소를 입력하세요">
                </div>
            <!-- 반려묘이름 입력 -->
            <h3 class="list" style="padding: 5%;" align="center">고양이 정보 등록 🐾</h3>
                 <div class="userInput">
                    <h3 class="list">반려묘 이름</h3>
                    <span class="box int_id">
                        <input type="text" id="name" class="int check" maxlength="20" placeholder="반려묘이름을 작성해주세요">
                    </span>
                 </div>
              </div>
            </div>
            <!--고양이 정보 등록-->
                 <!-- <div class="row_group"> -->
                 <div class="userInput" align="center">
                   <div id="content">
                     <h3 class="list">반려묘 몸무게(kg)</h3>
                     <span class="box int_weight">
                        <input type="text" name="weight" class="int" maxlength="5" placeholder="몸무게를 입력하세요.">kg
                     </span>
                   </div>
                 </div>


                 <!--생년월일 jQuery-->
<div align="center">
                 <h3>반려묘 생년월일</h3>
                 <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

                <select name="yy" id="year"></select>년
                <select name="mm" id="month"></select>월
                <select name="dd" id="day"></select>일

             <script>
             $(document).ready(function(){            
              var now = new Date();
             var year = now.getFullYear();
             var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
             var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
             
             //년도 selectbox만들기               
             for(var i = 1900 ; i <= year ; i++) {
             $('#year').append('<option value="' + i + '">' + i + '년</option>');    
             }

             // 월별 selectbox 만들기            
             for(var i=1; i <= 12; i++) {
             var mm = i > 9 ? i : "0"+i ;            
             $('#month').append('<option value="' + mm + '">' + mm + '월</option>');    
             }
  
             // 일별 selectbox 만들기
             for(var i=1; i <= 31; i++) {
             var dd = i > 9 ? i : "0"+i ;            
             $('#day').append('<option value="' + dd + '">' + dd+ '일</option>');    
             }
             $("#year  > option[value="+year+"]").attr("selected", "true");        
             $("#month  > option[value="+mon+"]").attr("selected", "true");    
             $("#day  > option[value="+day+"]").attr("selected", "true");       
             })
</script>
</div>
</div>            

                   
                <div class="col-12" style="margin-top: 2%;" align="center">
                    <span>
                    <button class="btn btn-primary" type="submit" style="border: none; background-color: 
                    rgb(189, 120, 212);">완료</button>
                    </span>
                </div>
                <br>
                <br>
                <br>
             

    </body>
    </html>