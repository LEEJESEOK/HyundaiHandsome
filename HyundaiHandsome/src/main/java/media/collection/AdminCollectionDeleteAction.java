package media.collection;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		boolean flag = collectionDao.deleteCollection(request.getParameter("id"));
		
		if(flag == false) {
			my_alert(response, "Collection Delete Fail","/ko/media/adminCollectionList.do");
		}else {
			my_alert(response, "Collection Delete Success","/ko/media/adminCollectionList.do");
		}
	}
	private void my_alert(HttpServletResponse response, String message, String page) throws IOException {
		PrintWriter out = response.getWriter();
		out.printf("<script>alert('%s'); location.href='%s';</script>", message, page);
		out.flush();
	
	}

}