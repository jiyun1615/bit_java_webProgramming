<%@ page import = "java.net.URLEncoder" %>

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
	int age = Integer.parseInt(request.getParameter("age"));
	if(age >=20)
	{
		response.sendRedirect("05_redirectResult.jsp?age="+
				URLEncoder.encode(age, "UTF-8"));		//string 들어가야되서 에러남
	}
	else{
		out.print("나이가 맞지 않습니다. 돌아가세요.");
	}
%>	
	
</body>
</html>