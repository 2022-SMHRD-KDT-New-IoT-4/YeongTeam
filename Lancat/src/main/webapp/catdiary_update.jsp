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
MembersDTO user = (MembersDTO)session.getAttribute("user");
Cat_DiaryDTO id = (Cat_DiaryDTO)session.getAttribute("change");
%>
      <div>
      <nav id="Update">
         <ul>
            <li><h5>육묘일기수정</h5></li>
            <form action="Diary_Update.do" method="post">
                <li><%=user.getId() %>님의 육묘일기🐾🐾</li>
                <li><input type="text" name="d_title" placeholder="제목 입력"></li>            
                <li><input type="text" name="d_content" placeholder="내용 입력"></li>            
                <li><input type="file" name="d_file" placeholder="파일 입력"></li>            
                <li><input type="submit" value="수정"></li>            
            </form>
         </ul>   
         </nav> 
      </div>

</body>
