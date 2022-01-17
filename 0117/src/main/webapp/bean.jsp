<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="simple1" class = "unit04.simple">
	<jsp:setProperty property="name" name = "simple1" value = "kim"/>
	<jsp:setProperty property="id" name = "simple1" value = "kimmid"/>
	<jsp:setProperty property="pwd" name = "simple1" value = "1234"/>
	<jsp:setProperty property="email" name = "simple1" value = "abc123@naver.com"/>
</jsp:useBean><br>

<h1>
<jsp:getProperty property="name" name="simple1"/>님 환영합니다. <br>
<jsp:getProperty property="id" name="simple1"/>id 확인 <br>
<jsp:getProperty property="pwd" name="simple1"/>비밀번호 확인 <br>
<jsp:getProperty property="email" name="simple1"/>이메일 확인 <br>


</h1>
</body>
</html>