<%@page import="java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement"%>
<%--preparedstatement 사용시 values(?,?,?)이런 식으로 간단하게 사용 가능! --%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!
Connection conn =null;		//오라클 연동 시 로그인할 때 사용
PreparedStatement pstmt = null;	
%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	
	if(name == null || name.trim().equals("")){
		response.sendRedirect("01_student.jsp");
		return;
	}

	String url = "jdbc:oracle:thin:@localhost:1522:XE";
	String uid = "system";
	String pwd = "1234";
	conn = DriverManager.getConnection(url,uid,pwd);
	//out.println("데이터베이스 연결 완료");
	String sqlName = "delete from student where name=(?)"; 
	
	PreparedStatement ps = conn.prepareStatement(sqlName);	//ps 설정
	ps.setString(1,name);
	int n = ps.executeUpdate();		//ps 실행
	String str = "삭제 성공";
	if(n>0)
	{
		str += "삭제처리되었습니다.";
	}
	else str = "삭제될 데이터가 없습니다.";
	out.println("<br>"+ str);
	ps.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href = "01_student.jsp">등록</a>
<a href = "02_addStudentForm.jsp">검색</a>

</table>
</body>

</html>