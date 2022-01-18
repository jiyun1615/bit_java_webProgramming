<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "com.saeyan.javabeans.MemberBeans" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
◆ 자바로 만들고 가져오는 방식
<%
	com.saeyan.javabeans.MemberBeans member1 = new com.saeyan.javabeans.MemberBeans();
	String name = member1.getName();
	out.print(name);
%>
◆ 자바 빈 만들기 <br>
<jsp:useBean class = "com.saeyan.javabeans.MemberBeans" id="member" scope = "page">
◆ 자바 빈 객체 생성 후 저장된 정보 출력하기 <br>
이름 : <%= member.getName() %> <br>
아이디 : <%= member.getUserid() %>
<hr>
<%  member.setName("전수빈");
	member.setUserid("pinksubin");
%>
이름 : <%=member.getName() %> <br>
아이디 : <%=member.getUserid() %> <br>

<hr>
이름 : <jsp:getProperty name = "member" property="name"/> <br>
아이디 : <jsp:getProperty name = "member" property="userid"/> <br>
<hr>
<jsp:setProperty name = "member" property="name" value = "홍길동"/>
<jsp:setProperty name = "member" property="userid" value = "a123"/>

이름 : <jsp:getProperty name = "member" property="name"/> <br>
아이디 : <jsp:getProperty name = "member" property="userid"/> <br>

</jsp:useBean>
</body>
</html>