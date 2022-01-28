<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="Hello World" />
	<br>
	<c:set var="msg" value="hello" scope="page" />
	\${msg} = ${msg}
	<br>
	<c:set var="age" scope="request">23</c:set>
	\${age} = ${age} <br>
	<c:remove var = "age" scope = "request"/>
	\${age} = ${age}
	<br>

	<c:set var="member" value="<%=new unit07.Member()%>"></c:set>
	<c:set target="${member }" property="name" value="전수빈" />
	<c:set target="${member }" property="userid">pinksubin</c:set>

	\${member} = ${member}
	<hr>
	\${member.name} = ${member.name}
	<br>
	\${member.userid} = ${member.userid}
	<hr>
	
	<c:set var = "add" value ="${10+5}"></c:set>
	\${add} = ${add} <br>
	<c:set var = "flag" value ="${10>5}"></c:set>
	\${flag} = ${flag} <br>
	


</body>
</html>