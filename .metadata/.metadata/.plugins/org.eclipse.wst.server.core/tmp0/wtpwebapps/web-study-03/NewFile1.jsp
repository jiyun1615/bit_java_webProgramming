c<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String str = "안녕하세요!";
	int a =5, b=-5;	
	
	public int abs(int n){
		if(n<0){
			n=-n;
		}
		return n;
	}
%>

str :<%=str %> <br> 
a :<%=a %> <br>
b :<%=b %> <br>

<%
	out.print(a+"의 절대값 : "+abs(a)+ "<br>");

	a=a+b;
	b=b*3;
	out.print("a : "+a+"<br>");
	out.print("b : "+b+"<br>");
	
%>


</body>
</html>