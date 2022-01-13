<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사</title>
</head>
<body>
<form action="research.jsp">
<h1>설문조사</h1>
이름 : <input type="text"><hr>
성별 : <input type="radio" value = "men">남자 
		<input type="radio" value="women">여자
<hr>
좋아하는 계절 : <input type="checkbox">봄
<input type="checkbox">여름
<input type="checkbox">가을
<input type="checkbox">겨울

<input type="submit" value="전송">
</form>

</body>
</html>