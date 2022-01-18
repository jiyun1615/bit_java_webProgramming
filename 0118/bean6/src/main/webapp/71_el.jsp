<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 식</title>
</head>
<body>
${"Hello"}	<br>
<%! String str = "Hello"; %>
<%=str %><br>
<%="Hello" %>
<% out.println("Hello"); %>
null : ${null}
<br>
${3==3}
${3==4}
<%! String input = null; %>
<br>
\1 : ${empty input }<br>
5+2 = ${5+2}<br>
5/2 = ${5/2}<br>
<%//5 div 3 = ${5 div 3}<br> %>
5%2 = ${5%2 }<br>
5 mod 2 = ${5 mod 2}<br>
5>2 = ${5>2}<br>
2 gt 10 = ${2 gt 10}<br>
( 3 > 4 )?3:4 = ${(3>4)?3:4 }<br>
5>2 || 5<2 = ${5>2 || 5<2 }
</body>
</html>