package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDAO;
import dto.AdminRegister;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdminRegisterCompleteServlet")
public class AdminRegisterCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminRegisterCompleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		AdminRegister adminRegister = (AdminRegister)session.getAttribute("adminRegister");
		
		int result = AdminDAO.registerAdmin(adminRegister);
		
		String path = "";
		if(result == 1) {
			session.removeAttribute("adminRegister");
			path = "WEB-INF/admin/adminregistersuccess.jsp";
		} else {
			session.removeAttribute("adminRegister");
			path = "WEB-INF/admin/adminregister.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
