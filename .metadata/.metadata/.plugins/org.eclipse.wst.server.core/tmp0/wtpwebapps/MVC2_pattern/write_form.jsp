<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성 폼</title>
</head>
<body>
<center>
	<form action = "write.do" method = "post">
	<hr width = 500 color = "lightblue">
	글 작성 페이지
	<hr width = 500 color = "lightblue">
	
		<table border=1 cellspacing=0 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size = 50 ></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size = 50></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><TextArea type="text" name="bContent" rows=5 cols=50></TextArea></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" value="저장">
				<a href = "list.do">목록으로</a>
				</td>
			</tr>

		</table>

	</form>
	</center>
</body>
</html>