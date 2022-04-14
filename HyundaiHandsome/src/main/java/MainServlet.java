
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import media.news.NewsDAO;
import media.news.NewsVO;

/**
 * Servlet implementation class MainServlet
 * main.do 처리 서블릿
 */
@WebServlet("/main.do")
public class MainServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MainServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doHandle(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doHandle(request, response);
	}

	void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 메인화면에 표시할 최근 3개 기사
		List<NewsVO> newsList = NewsDAO.getInstance().selectNewsList(1);
		List<NewsVO> news = newsList.subList(0, 3);
		request.setAttribute("news", news);

		request.getRequestDispatcher("/main.jsp").forward(request, response);

	}

}
