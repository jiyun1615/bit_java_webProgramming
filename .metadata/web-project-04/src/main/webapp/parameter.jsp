<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! int cnt = 8; %>
<%
	cnt ++;
	if(cnt == 10 || cnt == 15)
	{ %>
<jsp:forward page = "paramResult.jsp">
	<jsp:param value="<%=cnt %>" name="cnt"/>
</jsp:forward>
<% }
	else out.println(cnt+"번째 접속자입니다."); 
%>
</body>
</html>