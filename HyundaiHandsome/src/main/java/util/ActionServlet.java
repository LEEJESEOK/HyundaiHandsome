package util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.FrontController;

/*
작성자  : 고석준
클래스 설명 : 모든 호출을 처리하는 서블릿 클래스. 이곳에서 ActionFactory에게 담당할 서블릿 클래스를 찾아서 실행하게 시킨다.
*/
@WebServlet("*.do")
public class ActionServlet extends HttpServlet{
	private ActionFactory actionFactory = null;
	public ActionServlet() {
		this.actionFactory = ActionFactory.getInstance();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(req,resp);
	}
	
	public void doHandle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String command = req.getRequestURI(); 
		if(command.contains("/member") || command.contains("/company") || command.contains("/ir/governance") || command.contains("/ir/financialInfo")) {
			FrontController fcontrl = new FrontController();
			fcontrl.doHandle(req, resp);
			return;
		}
		Action action = actionFactory.getAction(req.getRequestURI());
		
		action.execute(req, resp);
	}

}
	
