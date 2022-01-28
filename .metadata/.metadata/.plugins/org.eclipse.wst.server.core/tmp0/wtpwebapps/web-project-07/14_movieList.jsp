<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String[] movieList = {"타이타닉", "시네마 천국", "혹성 탈출", "킹콩"};
	pageContext.setAttribute("movieList", movieList);
								//변수이름		//값
%>
<%-- forEach문으로 배열의 내용 출력하기 --%>
<c:forEach var = "movie" items="${movieList}">
	${movie}
</c:forEach>
<br>

<table border = "1" cellspacing=0 style="width:100%; text-align:center;" >
	<tr>			<%--테이블 생성 컬럼명--%>
	<th>index</th>
	<th>count</th>
	<th>title</th>
	</tr>
	
	<c:forEach var ="movie" items="${movieList}" varStatus = "status">
			<%--변수명 movie, varStatus=반복 상태 정보를 위한 변수--%>
	<tr>				<%--테이블에 들어갈 값 가져오기 --%>
		<td>${status.index}</td>	<%--첫 번째 컬럼 내용--%>
		<td>${status.count}</td>
		<td>${movie}</td>
	</c:forEach> 
	</tr>
</table>

</body>
</html>