package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookRegisterDAO;
import dto.BookRegister;

/**
 * Servlet implementation class SearchBookRegisterForm
 */
@WebServlet("/SearchBookRegisterForm")
public class SearchBookRegisterForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchBookRegisterForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Long isbn = request.getParameter("isbn");
		String bookname = request.getParameter("bookname");
		String author = request.getParameter("author");
		String genre = request.getParameter("genre");
		String bookstate = request.getParameter("bookState");

		BookRegister bookRegister = new BookRegister(isbn, bookname, author, genre, bookstate);

		int result = BookRegisterDAO.registerBookName(bookRegister);

		if(result == 1) {
			String view = "WEB-INF/search/registerSuccess.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		} else {
			String view = "WEB-INF/search/registerFail.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
