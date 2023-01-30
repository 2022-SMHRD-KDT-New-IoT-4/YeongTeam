<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
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


List<Cat_DiaryDTO> list = (List)session.getAttribute("list");
%>
     <div>
     <nav id="select">
      <table>
      <caption><h2>게싯ㅅ시싯ㅅ시싯판</h2></caption>
      <a href="diary_update.jsp">육묘일기수정</a>		
      <tr>
      <td>  </td>
      <td>날짜</td>
      <td>글 제목</td>
      <td>내용</td>
      <td>파일</td>
      </tr>
      <%
        for(int i = 0; i<list.size(); i++){
        	%>
       <tr>
           <td><%= list.get(i).getD_seq() %></td>
           <td><%= list.get(i).getD_dt() %></td>
           <td><%= list.get(i).getD_title() %></td>
           <td><%= list.get(i).getD_content() %></td>
           <td><%if(list.get(i).getD_file() != null) { 
        	   out.println(list.get(i).getD_file()); 
           }else{ 
            out.println("파일 없음");
           } %></td>
           <td>
           <input type="radio" name="update" value="<%= list.get(i)%>" >
           <%
          request.setAttribute("update", "update");
           %>
           </td>
       </tr>
      <%
        }
      %>
            
      
      </table>
      <div>
      <input type="button" value="수정" onclick="location.href='catdiary_update.jsp'">
      <input type="button" value="삭제">
      </div>
      </nav>
      <a href="Main.do" >메인으로</a>
      </div>
</body>
</html>