<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
td {
	text-align: center
}
</style>
</head>
<body>
	<center>
	
	<hr width = 600 color = gray> 리스트 <hr width = 600 color = gray>
		<table border=1 width=600 color=blue cellspacing=0>
			<tr bgcolor = "lightgray">
				<td>번호</td>
				<td>이름</td>
				<td>제목</td>
				<td width = 150>내용</td>
				<td width = 50>조회수</td>

			</tr>
			
			<!--  테이블의 내용출력영역 -->
			<tr>
			<td colspan="5"><a href = "write_view.do">글쓰기</a></td>
			</tr>
		</table>
	</center>
</body>
</html>