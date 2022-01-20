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
	String pw = "1234";
	String sql = "select * from member";
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
		<th>이름</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th width = 300>이메일</th>
		<th>전화번호</th>
		<th>권한(1:관리자, 0:사용자)</th>	
	</tr>
	
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,uid,pw);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()){
			out.println("<tr>");
			out.println("<td>"+rs.getString("name")+"</td>");
			out.println("<td>"+rs.getString("userid")+"</td>");
			out.println("<td>"+rs.getString("pwd")+"</td>");
			out.println("<td>"+rs.getString("email")+"</td>");
			out.println("<td>"+rs.getString("phone")+"</td>");
			out.println("<td>"+rs.getInt("admin")+"</td>");
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
		<td colspan=6><a href = "02_addMemberForm.jsp">회원정보추가</a></td>	
	</tr>
</table>
</body>
</html>