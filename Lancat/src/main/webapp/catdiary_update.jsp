<%@page import="java.util.List"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression"%>
<%@page import="com.smhrd.model.MembersDTO"%>
<%@page import="com.smhrd.model.Cat_DiaryDTO"%>
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
request.setCharacterEncoding("UTF-8");
MembersDTO user = (MembersDTO)session.getAttribute("user");
//Cat_DiaryDTO id = (Cat_DiaryDTO)session.getAttribute("change");
List<Cat_DiaryDTO> list = (List)session.getAttribute("list");
String update[] = request.getParameterValues("update");
%>
      <div>
      <nav id="Update">
         <ul>
            <li><h5>육묘일기수정</h5></li>
            <form action="Diary_Update.do" method="post">
                <li><%=user.getId() %>님의 육묘일기🐾🐾</li>
             
                <li><input type="text" name="d_title" value="ㅎㅎ"></li>            
                <li><input type="text" name="d_content" value="ㅎㅎ"></li>            
                <li><input type="file" name="d_file" value="ㅎㅎ"></li>            
                <li><input type="submit" value="수정"></li>       
               
            </form>
         </ul>  
         </nav> 
      </div>

</body>
