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
	System.out.println("데이터베이스 연결 완료 : " + conn);
	String sqlCnt = "select count(*) from student where name =?"; //갯수
	String sqlName = "select * from student where name=(?)"; //"", '' 구분 짓는 데서 오류가 많음 -> 바인딩 변수로 처리(?,?,?)
	//String sqlPw = "select * from student where pw=(?)";
	//String sqlNo = "select * from student where no=(?)";
	//String sqlHp = "select * from student where hp=(?)";
	
	PreparedStatement ps = conn.prepareStatement(sqlCnt);
	ps.setString(1,name);
	ResultSet rs = ps.executeQuery();
	rs.next();
	int cnt = rs.getInt(1);
	
	rs.close();
	ps.close();
	out.println("<br>"+cnt+"명");
	
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

<center>
<table width = 500 border =1>
	<tr>
		<th width = 25%>학번</th>
		<th width = 25%>비밀번호</th>
		<th width = 25%>이름</th>
		<th width = 25%>전화번호</th>
	</tr>
	<% if(cnt>0){
		ps = conn.prepareStatement(sqlName);
		ps.setString(1,name);
		rs = ps.executeQuery();
		while(rs.next()){
			String no = rs.getString(1);
			String pw = rs.getString(2);
			String name2 = rs.getString(3);
			String hp = rs.getString(4);
	%>
	<tr>
	<td> <%=no %></td>
	<td> <%=pw %></td>
	<td> <%=name2 %></td>
	<td> <%=hp %></td>
	</tr>
	<%
		}
		out.println("<tr><td colspan=4>");
		out.println(name+"님은 전체" + cnt + "명입니다.");
		out.println("</td></tr>");
	}else{
		out.println("<tr><td colspan=4>");
		out.println(name+"님은 존재하지 않습니다");
		out.println("</td></tr>");
	}
	%>
</table>
</center>
</body>

</html>