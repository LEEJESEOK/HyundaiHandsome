package media.news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : News의 Det정보 요청을 처리하는 서블릿 클래스.
*/
public class NewsDetAction implements Action{
	private NewsDAO newsDAO = null;
	private static NewsDetAction instance = new NewsDetAction();
	private NewsDetAction() {}
	public static NewsDetAction getInstacne() {
		// TODO Auto-generated method stub
		return instance;
	}
	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		int newsId= Integer.parseInt(request.getParameter("newsId"));
		
		newsDAO = NewsDAO.getInstance();
		
		NewsVO newsDet = newsDAO.selectNewsDet(newsId);
		request.setAttribute("newsDet", newsDet);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/media/news/newsDet.jsp");
		rd.forward(request, response);
	}

	
	
}
