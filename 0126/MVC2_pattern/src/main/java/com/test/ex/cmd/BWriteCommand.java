package com.test.ex.cmd;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ex.dao.Bdao;

public class BWriteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)  {
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		//DB 접속하기 
		Bdao dao = new Bdao();
		//	dao.write(bName, bTitle, bContent);
		//--->DB에서 동작할 수 있도록 구현하기
		try {
			dao.write(bName, bTitle, bContent);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
