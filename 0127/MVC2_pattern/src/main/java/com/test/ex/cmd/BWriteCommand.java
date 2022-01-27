package com.test.ex.cmd;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ex.dao.Bdao;

//execute()
//인터페이스 BCommand(아버지)안의 메소드는 추상 메소드


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
