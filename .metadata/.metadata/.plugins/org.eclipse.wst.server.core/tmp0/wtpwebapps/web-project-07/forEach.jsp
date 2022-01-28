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
	<table border =1 cellspacing =0 style="width:200px; text-align:center;">
		<%--셀 사이 간격=0--%>
		<c:forEach var="cnt" begin="7" end="10" varStatus="status">
			<tr>
				<td>${status.index}</td>
				<td>${status.count}</td>
				<td>${cnt}</td>
			</tr>
		</c:forEach>
	</table>

	<table border = 1 cellspacing =0 style="width:200px; text-align:center;">
		<c:forEach var="cnt" begin="1" end="10" step="2" varStatus="status">
				<%-- begin=1에서 시작, end=10에서 끝, step=2만큼 증가--%>
			<tr>
				<td>${status.index}</td>	<%--현재 항목의 index(원래는 0부터 시작 but 지정된 수 1부터 시작) --%>
				<td>${status.count}</td>	<%--count 몇 번째 반복 중인지 표시  --%>
				<td>${cnt}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>