package media.collection;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : 관리자의 Collection List 화면을 호출을 처리하는 클래스 
*/

public class AdminCollectionListAction implements Action {
	private static AdminCollectionListAction instance = new AdminCollectionListAction();
	private AdminCollectionListAction() {}
	
	public static AdminCollectionListAction getInstance() {
		// TODO Auto-generated method stub
		return instance;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		System.out.println("AdminCollectionListAction called");
		
		
		CollectionDAO collection = CollectionDAO.getIntance();
		String brandName = request.getParameter("brandName");
		int indexPage = 1;
		if(request.getParameter("pageIndex") != null) {
			indexPage = Integer.parseInt(request.getParameter("pageIndex"));
		}
		List<CollectionVO> collectionList = collection.selectCollectionList(brandName, indexPage);
		
		request.setAttribute("collectionList", collectionList);
		
		
		//jsp화면 페이징에 사용할 정보 넘겨주기 
		//필요한 정보 : 1. 현재 select된 rows의 갯수 + 현재 페이지 index
		//           2. 현재 조회하고 있는 브랜드 이름 없으면 Null
		//한 페이지에 8개 씩 보여주므로 8로 나눈 몫+(나머지 있으면 반올림)
		
		int selectedRows = collection.countCollection(brandName);
		System.out.println("selectedRows : " + selectedRows);
		request.setAttribute("totalRows", selectedRows);
		int plusPage=(selectedRows%8) == 0 ? 0 : 1 ;
		selectedRows = (selectedRows/8) + plusPage ;
		System.out.println("selectedRows : " + selectedRows);
		request.setAttribute("selectedRows", selectedRows);
		request.setAttribute("indexPage", indexPage);
		
		request.setAttribute("brandName", request.getParameter("brandName"));
		
		RequestDispatcher rd = request.getRequestDispatcher("/media/collection/adminCollectionList.jsp");
		rd.forward(request, response);
	}

}
