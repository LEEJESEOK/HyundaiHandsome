package ir;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 문혁
클래스 설명 : IR 첨부파일 목록을 출력하는 클래스. 페이지에 따른 목록은 jsp에서 처리 
*/
public class IrArchiveListAction implements Action {
	private static IrArchiveListAction instance = new IrArchiveListAction();
	private IrArchiveListAction() {
	} // 싱글턴 패턴 적용
	public static IrArchiveListAction getInstance() {
		return instance;
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/ir/irArchiveList.jsp");
		rd.forward(request, response);
	}

}