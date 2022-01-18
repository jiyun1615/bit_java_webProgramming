<%@ page import = "java.net.URLEncoder" %>

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
	request.setCharacterEncoding("UTF-8"); 		//post 한글 깨짐 방지
	String userid = request.getParameter("id");
	String userpwd = request.getParameter("pwd");	
%>
el태그 이용 출력하기<br>
아이디 : ${param.id} <br>
비밀번호 : ${param["pwd"]}

</body>
</html>