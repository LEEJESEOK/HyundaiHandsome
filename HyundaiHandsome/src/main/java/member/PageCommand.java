package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

/*  이지은 작성
 *  웹 브라우저에서 내 정보 확인 페이지로 요청 시 기능 수행
 *  
 *  1. MEMBER table로부터 현재 로그인한 관리자의 데이터를 SELECT
 *  2. 해당 관리자의 이름, 전화번호, ID 출력
 */

public class PageCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();  // 현재 세션에 저장된 속성 값 확인
		String user_id = (String)session.getAttribute("login_id");
		
		MemberDAO memberDAO = MemberDAO.getInstance();  // MemberDAO 객체 생성
		MemberVO memberVO = new MemberVO(user_id);  // MemberVO 객체 생성
		List<MemberVO> info = memberDAO.getInfo(memberVO);  // 로그인한 아이디와 일치하는 데이터 확인, 결과를 info에 저장
		
		request.setAttribute("info", info);  // 조회 결과를 request 내장 객체에 바인딩
	}
}