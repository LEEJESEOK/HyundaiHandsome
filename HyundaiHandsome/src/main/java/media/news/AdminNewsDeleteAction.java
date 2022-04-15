package media.news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : 관리자가 NEWS를 삭제하는 호출을 처리하는 서블릿 클래스   
*/
public class AdminNewsDeleteAction implements Action {
	private static AdminNewsDeleteAction instance = new AdminNewsDeleteAction();
	private AdminNewsDeleteAction() {}
	public static AdminNewsDeleteAction getInstance() {
		return instance;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NewsDAO newsDao = NewsDAO.getInstance();
		newsDao.deleteNews(request.getParameter("id"));
		RequestDispatcher rd = request.getRequestDispatcher("/media/adminNewsList.do");
		rd.forward(request, response);
		
	}

}
