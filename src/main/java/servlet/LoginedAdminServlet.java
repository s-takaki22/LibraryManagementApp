package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginedAdminServlet")
public class LoginedAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginedAdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("UTF-8");
		String adminMail = request.getParameter("adminmail");
		String adminPw = request.getParameter("adminpass");
		System.out.println(adminMail);
		System.out.println(adminPw);
		
//		String salt = UserDAO.getSalt(adminMail);
//		
//		if(salt == null) {
//			System.out.println("Saltがnullです。");
//			String view = "./";
//			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
//			dispatcher.forward(request, response);
//			return;
//		}
		
//		String hashedPw = GenerateHashedPw.getSafetyPassword(adminPw, salt);
//		Register account = UserDAO.login(adminMail, hashedPw);
		
		String view = "WEB-INF/admin/adminhome.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		
//		if(account == null) {
//			System.err.println("ログイン失敗です");
//			String view = "./?error=1";
//			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
//			dispatcher.forward(request, response);
//		} else {
//			System.out.println("login,succes");
//			// ログイン情報をセッションに登録
//			HttpSession session = request.getSession();
//			session.setAttribute("user", account);
//
//			String view = "WEB-INF/view/loginhome.jsp";
//			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
//			dispatcher.forward(request, response);
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
