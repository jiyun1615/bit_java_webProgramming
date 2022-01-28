package unit03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");

		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		String fruit = request.getParameter("fruit");
		String ageresult;
		out.print("<html><body><h1>");
		out.print("<br>This is information <br>");
		if (age >= 20) {
			ageresult = "able";
		} else
			ageresult = "unable";
		out.print("사이트 이용여부:" + ageresult + "입니다.<br>");
		out.print("<br>id:" + id + "<br>");
		out.print("age:" + age + "<br>");
		out.print("좋아하는 과일 : " + fruit);
		String pw = request.getParameter("<br>pw");
		out.print("pw:" + pw);
		String gender = request.getParameter("gender");
		out.print("<br>gender: " + gender);
		String ta = request.getParameter("ta");
		out.print("<br>남기고 싶은 말: " + ta);

		String check[] = request.getParameterValues("check");
		// 배열출력
		out.print("<br>관심분야 : ");
		for (int i = 0; i < check.length; i++) {
			out.print(check[i] + "  ");
		}

		String coffee = request.getParameter("bean");
		out.print("<br>좋아하는 커피 : " + coffee);
		System.out.println("coffee: "+coffee); //콘솔창에 입력
		
		
		out.print("</h1></body></html>");

		out.close();
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}
