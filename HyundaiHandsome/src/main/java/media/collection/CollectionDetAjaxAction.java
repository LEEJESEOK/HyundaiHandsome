package media.collection;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : Collection 화면에서 호출하는 ajax 요청(Collection Det 정보)을 처리하는 서블릿 클래스.
*/
public class CollectionDetAjaxAction implements Action{
	private static CollectionDetAjaxAction instance = new CollectionDetAjaxAction();
	private CollectionDetAjaxAction() {}
	
	public static CollectionDetAjaxAction getInstance() {
		// TODO Auto-generated method stub
		return instance;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		
		CollectionDAO dao = CollectionDAO.getIntance();
		List<CollectionVO> collectionImages= dao.selectCollection(request.getParameter("id"));
		
		//VO타입의 리스트를 json형태로 바꿔주는 구문, gson-2.2.4jar 라이브러리 필요 
		String gson = new Gson().toJson(collectionImages);
		
		try {
			response.getWriter().write(gson);
		} catch(JsonIOException e) {
			e.printStackTrace();
		}
	}
	
	
}
