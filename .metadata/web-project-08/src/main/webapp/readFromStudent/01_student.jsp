<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  //선언부는 첫 방문자에 의해서 단 한번 수행합니다. 
	Connection conn =null;		//오라클 연동 시 로그인할 때 사용
	Statement stmt = null;		//질의문 사용 시
	ResultSet rs = null;		
	
	String url = "jdbc:oracle:thin:@localhost:1522:XE";
	String uid = "system";
	String pwd = "1234";
	String sql = "select * from student";
%>
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th{
		background-color:lightgray;
	}
	td{
		text-align:center;
	}
</style>
</head>
<body>
<center><h2>Member table</h2></center> <hr>

<table width = '100%' cellspacing=0 border = '1'>
	<tr>
		<th>no</th>
		<th>pw</th>
		<th>name</th>
		<th>hp</th>	
	</tr>
	
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,uid,pwd);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			out.println("<tr>");
			out.println("<td>"+rs.getString("no")+"</td>");
			out.println("<td>"+rs.getString("pw")+"</td>");
			out.println("<td>"+rs.getString("name")+"</td>");
			out.println("<td>"+rs.getString("hp")+"</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null) rs.close();
		conn.close();
		stmt.close();	
	}
	%>
	<tr>
		<td colspan=6><a href = "02_addStudentForm.jsp">회원정보추가</a></td>	
	</tr>
	<tr>
		<td colspan=6><a href = "02_findStudentInfoForm.jsp">학생정보찾기</a></td>
	</tr>
	
</table>
</body>
</html>