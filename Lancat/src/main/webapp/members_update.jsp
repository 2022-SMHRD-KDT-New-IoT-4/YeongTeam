<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MembersDTO"%>
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
   	Object user = session.getAttribute("user");
	MembersDTO id = (MembersDTO)user;
	
%>

	<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="Members_Update.do" method="post">							
									<li><%=id.getId()%>님</li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="cat_Name" placeholder="고양이 이름을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="date" name="cat_Birth" placeholder="고양이 생일을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="number" name="cat_Wt" placeholder="고양이 몸무게를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="addr" placeholder="집주소를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="submit" value="JoinUs" class="button fit" style="width: 500px; margin: 0 auto;"></li>
								</form>
						</ul>
					</nav>			
			</div>





</body>
</html>