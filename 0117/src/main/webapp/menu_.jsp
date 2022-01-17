<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Lunch" class = "unit04.Menu">		<%//객체 생성 %>
	<jsp:setProperty property="name" name = "Lunch" value = "샐러드"/>
	<jsp:setProperty property="price" name = "Lunch" value = "5000"/>
</jsp:useBean><br>

<jsp:useBean id="Dinner" class = "unit04.Menu">
	<jsp:setProperty property="name" name = "Dinner" value = "뿌링클"/>
	<jsp:setProperty property="price" name = "Dinner" value = "18000"/>
</jsp:useBean><br>

<h3>
점심 메뉴  :<jsp:getProperty property="name" name="Lunch"/> &nbsp;
가격 : <jsp:getProperty property="price" name="Lunch"/>원<br>

저녁 메뉴 : <jsp:getProperty property="name" name="Dinner"/> &nbsp;
가격 : <jsp:getProperty property="price" name="Dinner"/>원<br>

배고프다ㅏ

</h3>


</body>
</html>