<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
고전 방식 <br>
${param.num1} + ${param.num2} = ${param.num1+param.num2} <br>

<%
String str1 = request.getParameter("num1");
String str2 = request.getParameter("num2");
int num1 = Integer.parseInt(str1);
int num2 = Integer.parseInt(str2);
%>

EL 방식 <br>
<%=num1 %> + <%=num2 %> = <%=num1 + num2 %> <hr>

</body>
</html>