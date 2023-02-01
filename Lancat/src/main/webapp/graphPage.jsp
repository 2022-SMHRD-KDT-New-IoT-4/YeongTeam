<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.MembersDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.SensorDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고양이 IoT 화장실 데이터</title>
<script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series/series-label.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
      
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
            <a class="navbar-brand" href="Main.jsp" >랜선집사들</a>
            <img src="./image/ransom.png" width="29px"style="margin-top:10px;">
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
          <!-- 메인페이지 우측 상단의 이동란
              아직 안정해져서 href 안바꿈
          브랜드스토리 제외하고는 로그인 시 확인가능 248/280/322-->
    
	         <li><a href="Main.do">브랜드 스토리</a></li>
	         <li><a href="Tltuse_Select.do">마이펫케어</a></li>
	         <li><a href="Calender_Main.do">펫다이어리</a></li>
	         <li><a href="catGoods.jsp">반려묘용품</a></li>
	         <li><a href="catEncyclopedia_main.jsp">커뮤니티</a></li>
	         <li><a href="members_update.jsp">회원정보 수정</a></li>
          </ul>
        </div>
      </div>
    </nav>
    
      <div class="jumbotron text-center">
      <!-- 홈페이지 이름 작성 -->
      <br>
      <h2>반려묘케어</h2><br>

      <%
      MembersDTO user = (MembersDTO)session.getAttribute("user");
      List<SensorDTO> tltList = (List<SensorDTO>)session.getAttribute("tltList");
      List<String> dayList = (List<String>)session.getAttribute("dayList");
      ArrayList<String> list = new ArrayList<String>();
      
      // 고양이 몸무게
      float[] wt = new float[dayList.size()];
      // 화장실 소변횟수
      int[] pee_cnt = new int[dayList.size()];
      // 화장실 대변횟수
      int[] poo_cnt = new int[dayList.size()];
      // 체류시간
      int[] useTime = new int[dayList.size()];
      // 총 화장실 이용횟수 
      int[] tlt_cnt = new int[dayList.size()];
      // 날짜
      String yy = dayList.get(0).substring(0, 4);
      String[] day = new String[dayList.size()];
      
      int gasCnt = 0;
      float gasAvg = 0;
      
      for(int i = 0; i < dayList.size(); i++){
         String mm = dayList.get(i).substring(dayList.get(i).length()-5, dayList.get(i).length()-3);
         String dd = dayList.get(i).substring(dayList.get(i).length()-2, dayList.get(i).length());
         day[i] = "'" + mm + dd + "'";
      }
      
      // 화장실 사용정보 -> data
      for(SensorDTO s : tltList){
         for(int i = 0; i < dayList.size(); i++){
            if(s.getIn_time().contains(dayList.get(i))){
               wt[i] += s.getCat_wt();
               if(s.getPotty_type().equals("소변")){
                  pee_cnt[i]++;
                  useTime[i] += Integer.parseInt(s.getUse_time().substring(s.getUse_time().length()-2, s.getUse_time().length()));
               }else{
                  poo_cnt[i]++;
                  gasAvg += s.getGas();
                  gasCnt++;
               }
               tlt_cnt[i]++;
            }
         }
      }
      // 대변상태에 문제가 생겼는지 확인
      gasAvg /= gasCnt;
      for(SensorDTO s : tltList){
         if((gasAvg+10) < s.getGas()){
            list.add(s.getIn_time().substring(0, 10));
         }
      }
      // 다듬는 과정
      for(int i = 0; i < dayList.size(); i++){
         wt[i] /= tlt_cnt[i];
         useTime[i] /= pee_cnt[i];
      }
   %>

      
      
      <div class="spanTag">
      
        <!--★★★ 글씨 감성적인 문구 추가.....-->
        <h3><%=user.getCat_Name() %>(이)의 상태를 확인해보세요! 😺</h3> 
         <%
            String ment = "";
            if(list != null){ 
               for(String str : list){
                  ment += "'" + str + "'";
               } 
            }
            
            %>
            <% if(ment != null){ 
               System.out.println(ment + "체크");
               String name = "'" + user.getCat_Name() + "'";
            %>
              <script>
              Swal.fire({
                   type : "error",
                   title :<%=name.toString() %> + "(이)의 상태에 변화가 생겼어요! 😿" ,
                   text : <%=ment.toString() %> + " 날짜의 건강 상태를 확인해보세요!",
                   });
              </script>               
            
            <%}%>
               
      </div>
    </div>
   


    <!-- 화장실 데이터 차트 (데이터 임의로 넣어둠!)-->

    <div id="poop-graph"></div>
   <script>

   Highcharts.chart('poop-graph',{
    title:{
        text:'고양이 대소변 데이터'
    },
    subtitle:{
        text:'IoT 데이터를 통한 고양이 대소변 그래프'
    },

    // y축의
    yAxis:{
        title:{
            text:''
        },
        max:20,
        min:0
    },

    xAxis:{
        title:{
            text:'날짜('+<%=yy %>+')'
            
        },
        categories:<%=Arrays.toString(day) %>
    },

    // x축의 범례
    legend:{
        layout:'vartical',
        align:'right',
        verticalAlign:'middle'
    },

    // series : 차트데이터
    series:[{
        name: '일일 소변횟수',
        data:<%=Arrays.toString(pee_cnt) %>
        
    },{
        name: '몸무게 kg',
        data:<%=Arrays.toString(wt) %>,
        zones:[
            {
            color:'rgb(144, 81, 226)'
        },
       ]

    },{
      name: '체류시간 (초)',
      data:<%=Arrays.toString(useTime) %>
    },
    {
        name: '일일 대변횟수',
        data:<%=Arrays.toString(poo_cnt) %>,
        zones:[
            {
            color:'red'
        },
       ]

    }
    ],

   });



   </script>

</body>
</html>