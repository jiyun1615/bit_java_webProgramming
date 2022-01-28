package com.test.ex.dao;

import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

import com.test.ex.dto.Bdto;

public class Bdao {
	Connection dbconn;
	PreparedStatement pstmt;
	ResultSet rs;
	String url = "jdbc:oracle:thin:@localhost:1522:XE";
	String uid = "system";
	String pwd = "1234";

	DataSource dataSource;

	public Bdao(int i) {
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataSource = (DataSource) envContext.lookup("jdbc/myoracle");
			Connection conn = dataSource.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete(String bId, int i) {
		Connection conn;
		try {
			conn = dataSource.getConnection();
			String sql = "delete from board where bId = ?";
			pstmt = dbconn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(bId));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void delete(String bId) throws SQLException {
		String sql = "delete from board where bId = ?";
		pstmt = dbconn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(bId));
		pstmt.executeUpdate();

	}

	
	public Bdao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbconn = DriverManager.getConnection(url, uid, pwd);
			System.out.println("데이터베이스 연결!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void write(String bName, String bTitle, String bContent) throws SQLException {
		String sql = "insert into board(bId, bName, bTitle, bContent, bHit, bGroup,bIndent)"
				+ "values(board_seq.nextval,?,?,?,board_seq.currval,0,0)";

		pstmt = dbconn.prepareStatement(sql);
		pstmt.setString(1, bName);
		pstmt.setString(2, bTitle);
		pstmt.setString(3, bContent);

		int n = pstmt.executeUpdate();
		if (n > 0)
			System.out.println("입력성공<br>");
		else
			System.out.println("입력실패<br>");
		pstmt.close();
		//dbconn.close();
	}

	public ArrayList<Bdto> list() {
		String sql = "select bID, bName, bTitle, bDate, bHit, bGroup, bStep, bIndent from board";
		ArrayList<Bdto> dtos = new ArrayList<Bdto>();
		try {

			pstmt = dbconn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int bId = rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				int bGroup = rs.getInt("bGroup");
				int bStep = rs.getInt("bStep");
				int bIndent = rs.getInt("bIndent");

				Bdto dto = new Bdto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				dtos.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return dtos;
	}

}