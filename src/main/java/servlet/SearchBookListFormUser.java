package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dto.Book;

/**
 * Servlet implementation class SearchBookListForm
 */
@WebServlet("/SearchBookListFormUser")
public class SearchBookListFormUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchBookListFormUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("UTF-8");
		String word = request.getParameter("search");
		System.out.println(word);
		
		List<Book> list = BookDAO.listBook(word);
		request.setAttribute("booklist", list);
		
//		for(int i=0; i<list.size(); i++) {
//			System.out.println("表示します");
//			System.out.println((list.get(i)).getIsbn());
//			System.out.println((list.get(i)).getBookname());
//			System.out.println((list.get(i)).getAuthor());
//			System.out.println((list.get(i)).getGenre());
//			System.out.println((list.get(i)).getBookState());
//		}
		
		String view = "WEB-INF/user/list.jsp";
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
