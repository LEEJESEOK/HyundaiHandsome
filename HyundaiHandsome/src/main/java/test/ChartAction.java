package test;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : 관리자 페이지에서 차트화면을 호출을 처리하는 서블릿 클래스.
*/
public class ChartAction implements Action {
	private static ChartAction instance = new ChartAction();
	private ChartDAO chartDAO = null;
	private ChartAction() {
		
	}
	public static ChartAction getInstance() {
		return instance;
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("/mediaChart.jsp");
		chartDAO = ChartDAO.getInstance();
		
		Map<String, List<ChartVO>> statMap = chartDAO.selectChart();
		
		//예외처리 
		if(statMap == null) {
			
			rd.forward(request, response);
			return;
		}
		//구글 차트에서 필요한 정보를 request에 담아서 보내준다. 
		request.setAttribute("brandByName", statMap.get("brandByName"));
		request.setAttribute("collectionBySeason", statMap.get("collectionBySeason"));
		rd.forward(request, response);
	}

}
