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
	String pwd = "1234";
	
	String sql = "insert into student values(?,?,?,?)"; //"", '' 구분 짓는 데서 오류가 많음 -> 바인딩 변수로 처리(?,?,?)
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
	
	String no = request.getParameter("no");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	
	
	
	if(no==null || pw==null ||name==null ||hp==null || no.trim().equals("") || pw.trim().equals("") || name.trim().equals("") || hp.trim().equals("") ) {
%>
<script type = "text/javascript">
	alert("공란없이 입력하세요!");
	history.back();
</script>

<%
	}
	
	try{
		//1. 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2. 오라클과 연결
		conn = DriverManager.getConnection(url,uid,pwd);
		//3. 질의문 넣어 실행하기
		pstmt = conn.prepareStatement(sql);
		//4. 바인딩 변수 연결 첫번째 칼럼을 1로 취급
		pstmt.setString(1,no);
		pstmt.setString(2,pw);
		pstmt.setString(3,name);
		pstmt.setString(4,hp);
		//5. 실행하기
		pstmt.executeUpdate();		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//6.리소스 해제
		if(pstmt != null) pstmt.close();
		if(conn!= null) conn.close();
	}
%>

<h3>회원가입 성공!</h3>
<a href = "01_student.jsp"> 회원 전체 목록 보기 </a>

</body>
</html>