<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16_movieList</title>
</head>
<body>
	<%
	String[] movieList = { "타이타닉", "시네마 천국", "혹성 탈출", "킹콩","오만과편견"};
	pageContext.setAttribute("movieList", movieList);
	//변수이름		//값
	%>
	<%-- forEach문으로 배열의 내용 출력하기 --%>
<ul>
	<c:forEach var="movie" items="${movieList}" varStatus="status">
		<c:choose>
			<c:when test="${status.first}">
				<li style="font-weight: bold; color: red;">${movie}</li>
			</c:when>
			<c:otherwise>
				<li>${movie}</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>

그대로 출력하기 <hr>
<c:forEach var = "movie" items="${movieList}" varStatus = "status">
	${movie} <c:if test="${not status.last}">,</c:if>
</c:forEach>

	<br>
	<table border="1" cellspacing=0
		style="width: 100%; text-align: center;">
		<tr>
			<th>index</th>
			<th>count</th>
			<th>title</th>
		</tr>
		<c:forEach var="movie" items="${movieList}" varStatus="status">
			<tr>
				<td>${status.index}</td>
				<td>${status.count}</td>
				<td>${movie}</td>
			</tr>
		</c:forEach>
		
	</table>

</body>
</html>