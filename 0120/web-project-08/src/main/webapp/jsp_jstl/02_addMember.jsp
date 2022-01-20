<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%--preparedstatement 사용시 values(?,?,?)이런 식으로 간단하게 사용 가능! --%>
<%@page import = "java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  //선언부는 첫 방문자에 의해서 단 한번 수행합니다. 
	Connection conn =null;		//오라클 연동 시 로그인할 때 사용
	PreparedStatement pstmt = null;		//질의문 사용 시
	
	String url = "jdbc:oracle:thin:@localhost:1522:XE";
	String uid = "system";
	String pw = "1234";
	
	String sql = "insert into member values(?,?,?,?,?,?)";
%>  
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
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin");
	
	try{
		//1. 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2. 오라클과 연결
		conn = DriverManager.getConnection(url,uid,pw);
		//3. 질의문 넣어 실행하기
		pstmt = conn.prepareStatement(sql);
		//4. 바인딩 변수 연결
		pstmt.setString(1,name);
		pstmt.setString(2,userid);
		pstmt.setString(3,pwd);
		pstmt.setString(4,email);
		pstmt.setString(5,phone);
		pstmt.setInt(6,Integer.parseInt(admin));
		//5. 실행하기
		pstmt.executeUpdate();		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//6.리소스 해제
		pstmt.close();
		conn.close();
	}
%>

<h3>회원가입 성공!</h3>
<a href = "01_allMember.jsp"> 회원 전체 목록 보기 </a>

</body>
</html>