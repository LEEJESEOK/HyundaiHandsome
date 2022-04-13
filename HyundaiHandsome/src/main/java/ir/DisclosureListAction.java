package ir;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Action;

public class DisclosureListAction implements Action {

   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "/ir/disclosureInfoList.jsp";
      String page_ = request.getParameter("pageIndex");
//      String keyword_ = request.getParameter("keyword");
      String keyword = request.getParameter("keyword");
      // 페이지 리스트 폼에서 goToThisPage 함수 호출에 의해 get 방식으로 전달된 pageIndex 확인
      int page = 1;
      // 헤더의 IR -> IR 자료실 버튼으로 접근한 경우 pageIndex가 없으므로 1로 초기화
      if(page_ != null) {
         page = Integer.parseInt(page_);
      }
      
//      String keyword = "";
//      if(keyword_ != null) {
//         keyword = keyword_;
//      }
      
      DisclosureDAO disclosureDAO = DisclosureDAO.getInstance();
      // 요청이 들어온 페이지에 해당하는 공시 목록 10개 데이터 저장
      ArrayList<DisclosureVO> disList = null;
      int total = 0;
      if(keyword == "" || keyword == null) {
         disList = disclosureDAO.getListDisclosure(page);
         total = disclosureDAO.getDisclosureTotal(); 
      } else {
         disList = disclosureDAO.searchSameListDisclosure(keyword);
//         total = disclosureDAO.searchDisclosureTotal(keyword);
         total = 1; 
      }
      
      
      // pagination 시 마지막 페이지를 구하기 위해 총 공시 수 구하는 메서드 호출
      request.setAttribute("disList", disList);
      request.setAttribute("total", total);
      
      // 위의 정보를 공시정보 페이지로 전달
      request.getRequestDispatcher(url).forward(request,response);
   }
}