<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{ 
	background : skyblue;
	}
</style>

</head>
<body>

<jsp:include page = "10_header.jsp"/>
<div> 메인 화면입니다. <br>
	<a href = "10_sub.jsp"> 서브페이지로 이동</a>
	<jsp:include page = "10_footer.jsp"/>
</div>

</body>
</html>