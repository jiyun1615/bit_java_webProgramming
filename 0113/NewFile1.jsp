<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	//자바 사용 표시 스크립트릿
int num1 = 20, num2 = 10;
int sum = 0;
sum = num1+num2;
%>

<%
int age = 19;
String result = "";
if(age>=20)
	result = "성인인증완료";
else
	result = "실패";
out.print("<h1>helloworld<h1>");
%>


<!-- 주석 표현식 -->

<script type="text/javascript">
var dan = prompt();
for(i=1; i<10; i++)
	document.write(dan+"*"+i+"="+(dan*i)+"<br>");
</script>

<br>
<%
int dan =4;
for(int i=1; i<10;i++)
	out.print(dan+"*"+i+"="+(dan*i)+"<br>");
%>

<h2>결과:<%=result %></h2>

<h1>sum:<%=sum %></h1>
</body>
</html>