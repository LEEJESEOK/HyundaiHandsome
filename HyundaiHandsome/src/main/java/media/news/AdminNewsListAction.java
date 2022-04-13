package media.news;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : 관리자가 NewsList 화면을 호출했을 때 처리하는 서블릿 클래스 
*/
public class AdminNewsListAction implements Action {
	private static AdminNewsListAction instance = new AdminNewsListAction();
	private AdminNewsListAction() {}
	public static AdminNewsListAction getInstance() {
		return instance;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NewsDAO newsDao = NewsDAO.getInstance();
		
		RequestDispatcher rd = request.getRequestDispatcher("/media/news/adminNewsList.jsp");
		
		request.setCharacterEncoding("utf-8");
		int pageIndex = 1;
		if(request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		List<NewsVO> newsList = newsDao.selectNewsList(pageIndex);
		if(newsList == null) {
			//에러페이지로 이동 
		}
		request.setAttribute("newsList", newsList);
		
		//jsp화면 페이징에 사용할 정보 넘겨주기 
		//필요한 정보 : 1. 현재 select된 rows의 갯수 + 현재 페이지 index
		//           2. 현재 조회하고 있는 브랜드 이름 없으면 Null
		//한 페이지에 8개 씩 보여주므로 8로 나눈 몫+(나머지 있으면 반올림)
		int selectedRows = newsDao.countNews();
		request.setAttribute("totalRows", selectedRows);
		int plusPage=(selectedRows%6) == 0 ? 0 : 1 ;
		selectedRows = (selectedRows/6) + plusPage ;
		request.setAttribute("selectedRows", selectedRows);
		request.setAttribute("indexPage", pageIndex);
		
		rd.forward(request, response);
	}

}
