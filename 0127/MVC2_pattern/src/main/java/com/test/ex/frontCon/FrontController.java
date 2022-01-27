package com.test.ex.frontCon;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ex.cmd.BCommand;
import com.test.ex.cmd.BDeleteCommand;
import com.test.ex.cmd.BListCommand;
import com.test.ex.cmd.BWriteCommand;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();   
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("doGet");
		actionDo(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
		doGet(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {	//주문받겠습니다.
	System.out.println("actionDo");
	request.setCharacterEncoding("UTF-8");
	String uri = request.getRequestURI();
	System.out.println("uri : " + uri);
	String conPath = request.getContextPath();
	System.out.println("conPath : " + conPath);
	//해당 영역만 뽑아옴
	String cmd = uri.substring(conPath.length());
	System.out.println("cmd : " + cmd);
	String viewPage = null;
	BCommand command =null;
	if(cmd.equals("/write_view.do")) //한식주세요
	{
		
		//이부분은 간략히 나열만 한다.
		viewPage = "write_form.jsp";
	}else if (cmd.equals("/write.do")){
		command = new BWriteCommand();
		command.execute(request, response);		//BWriteCommand의 execute 불러옴
		viewPage = "list.do";
	}
	
	else if (cmd.equals("/list.do")){
	command = new BListCommand();
	command.execute(request, response);
	viewPage="list.do";
	}
	
	else if (cmd.equals("/delete.do")){
		command = new BDeleteCommand();
		command.execute(request, response);
		viewPage="delete.do";
		}
	
	/*
	else if (cmd.equals("/modify.do")){
		viewPage="list.do";
		command = new BModifyCommand();
		command.execute(request, response);
	}
	else if (cmd.equals("/list.do")){
		viewPage="list.do";
		command = new BListCommand();
		command.execute(request, response);
	}
	*/
		
		
	
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	dispatcher.forward(request, response);
}
}
