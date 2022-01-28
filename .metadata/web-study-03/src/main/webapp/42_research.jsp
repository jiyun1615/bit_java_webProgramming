<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	out.print("name : " + name);
	
	String gender = request.getParameter("gender");
	out.println("<br>성별 : ");
	if(gender.equals("male"))
		out.print("남성 입니다.");
	else out.print("여성 입니다.");
	
	String seasonArr[] = request.getParameterValues("season");
	out.println("<br>당신이 좋아하는 계절은 ");
	for(String season:seasonArr){
		int n = Integer.parseInt(season);
		switch(n){
		case 1 : out.print("봄입니다.");
			break;
		case 2 : out.print("여름입니다.");
			break;
		case 3 : out.print("가을입니다.");
			break;
		case 4 : out.print("겨울입니다.");
			break;
		}
	}
	
%>
<br>
<b><a href = "41_form.jsp">다시</a></b>


</body>
</html>