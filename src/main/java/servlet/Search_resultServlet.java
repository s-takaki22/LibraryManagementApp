package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.book;

/**
 * Servlet implementation class Kadai10_2Servlet
 */
@WebServlet("/book7Servlet")
public class Search_resultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search_resultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 文字コードの設定
		request.setCharacterEncoding("UTF-8");
				
		// フォーム入力内容の取得
		String name = request.getParameter("name");
		
	    book sts = new book("%"+name+"%"); 
		// DBから全件データを取得
		List<book> studentList = bookDAO.selectAllbook1(sts);
		
		// 取得したリストをリクエストスコープに保管(JSPに渡すため)
		request.setAttribute("list", studentList);
		
		String view = "WEB-INF/view/book2_2.jsp";
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
