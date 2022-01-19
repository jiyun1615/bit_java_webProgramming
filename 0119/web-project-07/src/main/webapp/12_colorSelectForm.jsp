<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	background: skyblue;
	width: 300px
}
p {
	background: pink;
	width: 200px;
	margin: 20px
}
span {
	color: brown;
}
</style>
</head>
<body>
쿼리로 값 받음 c:if 문 사용
	<div>
		<p>a<span>Hello</span> Nice to meet you</p>
		<p>b<span style="color: blue"> color </span> changing</p>
	</div>
	
	<c:if test = "${param.color ==1}">
		<span style = "color:green";> color = 1, Green</span>
	</c:if>
	<c:if test = "${param.color ==2}">
		<span style = "color:salmon";> color = 2, Salmon</span>
	</c:if>
	<c:if test = "${param.color ==3}">
		<span style = "color:gray";> color = 3, Gray</span>
	</c:if>

</body>
</html>