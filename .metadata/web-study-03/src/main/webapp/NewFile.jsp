<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jstest.js">
	
</script>

</head>
<body>
	<h1>서버로 전달하는 방법</h1>
	<form action="Servlet" method="post" name="form">
		id:<input type="text" name="id" /><br> age: <input type="text"
			name="age"><br> 좋아하는 과일 입력:<br> <input type="text"
			name="fruit"> <br> pw: <input type="password" name="pw"><br>
		성별: <input type="radio" id="male" value="남성" name="gender">male
		<input type="radio" id="female" value="여성" name="gender">female<br>
		인사 및 남기고 싶은 말 : <br>
		<textarea rows="5" cols="40" name="ta"></textarea>
		<br>관심분야: <input type="checkbox" name="check" value="DB">DB
		<input type="checkbox" name="check" value="movie" />movie <input
			type="checkbox" name="check" value="game">game <input
			type="checkbox" name="check" value="English">English <input
			type="checkbox" name="check" value="Youtube">Youtube<br>

		<select id="coffee" name="bean">
			<option value="americano">americano</option>
			<option value="vanila latte">vanila latte</option>
			<option value="mocha">mocha</option>
		</select> <input type="submit" value="submit" onclick="return check()">
		<input type = "reset" value="cancel"/>

	</form>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>