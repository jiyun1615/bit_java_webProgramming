<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보입력 폼</title>
</head>
<body><center>
<h2>회원 정보 입력 폼</h2>
<form method="post" action ="02_addStudent.jsp">
	<table border=0 cellspacing=0>
	<tr>
		<td>no</td>
		<td><input type = "text" name = "no" size = 20></td>
	</tr>
	<tr>
		<td>pw</td>
		<td><input type = "password" name = "pw" size = 20></td>
	</tr>
	<tr>
		<td>name </td>
		<td><input type = "text" name = "name" size = 20></td>
	</tr>
	<tr>
		<td>hp</td>
		<td><input type = "text" name = "hp" size = 20></td>
	</tr>
	
	<tr>
		<td><input type = "submit" value = "전송"></td>
		<td><input type = "reset" value = "취소"></td>
	</tr>
	
	</table>

</form>
<h2>학생검색</h2><hr width = 400/>
<form action = "02_findStudent.jsp" method = "post">
<tr>
	<td>이름<input type = "text" name = "name"/></td>
	<td cellspan = 2><input type = "submit" value = "전송"></td>
</tr>
</form>

<h2>학생삭제</h2><hr width = 400/>
<form action = "02_deleteStudent.jsp" method = "post">
<tr>
	<td>이름<input type = "text" name = "name"/></td>
	<td cellspan = 2><input type = "submit" value = "전송"></td>
</tr>
</form>


<hr width = 500>
<h2>학생목록</h2>
	<a href = "01_student.jsp">리스트</a>
	
</center>

</body>
</html>