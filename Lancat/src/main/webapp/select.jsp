<%@page import="com.smhrd.model.Cat_Diary_DTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
   List<Cat_Diary_DTO> list = (List)request.getAttribute("user");
%>
     <div>
     <nav id="Select">
      <table>
      <caption><h2>게싯ㅅ시싯ㅅ시싯판</h2></caption>
      <tr>
      <td>  </td>
      <td>날짜</td>
      <td>글 제목</td>
      <td>내용</td>
      </tr>
      <%
        for(int i = 0; i<list.size(); i++){
        	%>
       <tr>
           <td><%= list.get(i).getD_seq() %></td>
           <td><%= list.get(i).getD_dt() %></td>
           <td><%= list.get(i).getD_title() %></td>
           <td><%= list.get(i).getD_content() %></td>
       </tr>
      <%
        }
      %>
      
      
      
      
      
      </table>
      </nav>
      <a href="Main.do" >메인으로</a>
      </div>
</body>
</html>