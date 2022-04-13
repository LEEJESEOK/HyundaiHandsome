package ir;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

public class IrArchiveListAction implements Action {
	private static IrArchiveListAction instance = new IrArchiveListAction();
	private IrArchiveListAction() {}
	public static IrArchiveListAction getInstance() {
		return instance;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		RequestDispatcher rd =  request.getRequestDispatcher("/ir/irArchiveList.jsp");
		rd.forward(request, response);
	}

}
