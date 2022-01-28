package com.test.ex;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MemberDAO {		//DB 접속시 사용하는 클래스
	private DataSource ds;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();			//interface --부모 x = new-- 자식; 의 형태
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle11g");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList <MemberDTO> selectMember(){
		Connection dbcon = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<MemberDTO> mdtos = new ArrayList<MemberDTO>();
		String sql = "select * from member";
		while(rs.next()) {
			String name = rs.getString("name");
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String hp1 = rs.getString("h1");
			String hp2 = rs.getString("h2");
			String hp3 = rs.getString("h3");
			String gender = rs.getString("gender");
			
			MemberDTO mdto = new MemberDTO(name, id, pw, hp1, hp2, hp3, gender);
			mdtos.add(mdto);
		}
		return mdto;
	}
}
