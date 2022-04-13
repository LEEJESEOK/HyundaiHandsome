package media.collection;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
 작성자  : 고석준
 클래스 설명 : 관리자가 Collection을 삭제하는 호출을 처리하 클래스 */
public class AdminCollectionDeleteAction implements Action {
	private static AdminCollectionDeleteAction instance = new AdminCollectionDeleteAction();
	private AdminCollectionDeleteAction() {}
	
	public static AdminCollectionDeleteAction getInstance() {
		
		return instance;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CollectionDAO collectionDao = CollectionDAO.getIntance();
		
		collectionDao.deleteCollection(request.getParameter("id"));
		RequestDispatcher rd = request.getRequestDispatcher("/media/adminCollectionList.do");
		rd.forward(request, response);//삭제 완료 후 CollectionList 화면으로 이동 
	}

}
