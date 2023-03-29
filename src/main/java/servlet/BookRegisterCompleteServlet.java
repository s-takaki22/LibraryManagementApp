package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dto.Book;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/BookRegisterCompleteServlet")
public class BookRegisterCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookRegisterCompleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("UTF-8");
		
		String isbn = request.getParameter("isbn");
		String genre = request.getParameter("genre");
		String bookname = request.getParameter("bookname");
		String author = request.getParameter("author");
		String state = request.getParameter("state");
		
		Book register = new Book(isbn, genre, bookname, author, state);
		int result = BookDAO.registerBookName(register);
		
		String view = "";
		if(result == 1) {
			// 登録に成功したので、sessionのデータを削除
			view = "WEB-INF/view/register-account-success.jsp";
		} else {
			// 失敗した場合はパラメータ付きで登録画面に戻す
			view = "WEB-INF/view/register.jsp?error=1";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
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
