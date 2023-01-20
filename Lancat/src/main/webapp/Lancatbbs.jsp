<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Lancatinsert.do" method="post">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="d_title" maxlength="50" ></td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td><input type="text" name="d_content" maxlength="4000"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="작성"></td>
			</tr>
			
		</table>
		file: <input type="file" name="d_file"><br>
		
	</form>
</body>
</html>