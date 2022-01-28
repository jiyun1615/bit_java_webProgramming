<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>축하합니다!</h1><br>
	당신은 <%= request.getParameter("cnt") %> 번째 접속자입니다.

</body>
</html>