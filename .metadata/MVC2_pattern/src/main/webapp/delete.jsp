<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>삭제할 레코드의 번호를 입력하세요.</h3>
	<hr width=500 color="lightblue">

	<form action="delete.do" method="post">
		번호 <input type="text" name="bId" /> <input type="submit" value="삭제" />


		<a href="list.do">목록으로</a>
	</form>
</body>
</html>