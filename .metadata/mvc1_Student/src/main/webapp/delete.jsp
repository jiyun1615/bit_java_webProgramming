<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<%!String driver = "oracle.jdbc.driver.OracleDriver";
	Connection conn;
	Statement statement;
	PreparedStatement ps, ps1;
	String url = "jdbc:oracle:thin:@localhost:1522:xe";
	String uid = "system";
	String upw = "1234";
	String sql = "delete from student where name =?";
	String sqlNo = "delete from student where no = ?";
	ResultSet rs;
	int count;
	String name;
	String no;
	%>
	<%
	try {
		name = request.getParameter("name");
		/*if (name == null || name.trim().equals("")){
			response.sendRedirect("student_1.jsp");
			return;
		}*/
		no = request.getParameter("no");
		
			

		Class.forName(driver);
		conn = DriverManager.getConnection(url, uid, upw);
		ps1 = conn.prepareStatement(sqlNo);
		ps1.setString(1, no);
		
		ps = conn.prepareStatement(sql);
		ps.setString(1, name);
		
		int n = ps.executeUpdate();
		if (n==0)	n = ps1.executeUpdate();
		
		String str = "삭제";

		if (n > 0)
			str += "성공";
		else
			str += "실패";
		out.println(str + "<br>");
	} catch (Exception e) {
	}
	%>
	<a href="list.jsp">회원목록보기</a>/
	<a href="student_1.jsp">검색화면</a>
	<%
	ps.close();
	conn.close();
	%>
</body>
</html>