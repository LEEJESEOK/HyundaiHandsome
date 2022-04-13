package media.collection;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : Collection List화면 호출을 처리하는 서블릿. 
*/
public class CollectionListAction implements Action{
	private CollectionDAO collection = null;
	private static CollectionListAction instance = new CollectionListAction();

	private CollectionListAction() {}
	public static Action getInstance() {
		// TODO Auto-generated method stub
		return instance;
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		
		collection = CollectionDAO.getIntance();
		String brandName = request.getParameter("brandName");
		int indexPage = 1;
		if(request.getParameter("pageIndex") != null) { // 쿼리스트링에 파라미터가 없을때는 1페이지로 고정한다.
			indexPage = Integer.parseInt(request.getParameter("pageIndex"));
		}
		List<CollectionVO> collectionList = collection.selectCollectionList(brandName, indexPage);
		
		request.setAttribute("collectionList", collectionList);
		
		//브랜드 리스트 jsp에 넘겨주기
		List<String> nameList = collection.selectNameList();
		request.setAttribute("nameList", nameList);
		
		//jsp화면 페이징에 사용할 정보 넘겨주기 
		//필요한 정보 : 1. 현재 select된 rows의 갯수 + 현재 페이지 index
		//           2. 현재 조회하고 있는 브랜드 이름 없으면 Null
		//한 페이지에 8개 씩 보여주므로 8로 나눈 몫+(나머지 있으면 반올림)
		
		int selectedRows = collection.countCollection(brandName);
		request.setAttribute("totalRows", selectedRows);
		int plusPage=(selectedRows%8) == 0 ? 0 : 1 ;
		selectedRows = (selectedRows/8) + plusPage ;
		request.setAttribute("selectedRows", selectedRows);
		request.setAttribute("indexPage", indexPage);
		
		request.setAttribute("brandName", request.getParameter("brandName"));
		
		RequestDispatcher rd = request.getRequestDispatcher("/media/collection/collectionList.jsp");
		rd.forward(request, response);
	}
	
}
