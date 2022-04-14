package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

/*  이지은 작성
 *  웹 브라우저에서 관리자 추가 페이지로 요청 시 기능 수행
 *  
 *  1. 클라이언트로부터 이름, 전화번호, 아이디, 비밀번호 GET
 *  2. 해당 데이터를 MEMBER table에 INSERT
 */

public class AddMemberCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 클라이언트로부터 추가할 데이터(이름, 전화번호, 아이디, 비밀번호) GET
		String new_name = request.getParameter("new_name");
		String new_tel = request.getParameter("new_tel");
		String new_id = request.getParameter("new_id");
		String new_pwd = request.getParameter("new_pwd");
		
		// REQUEST에 데이터가 있다면, 데이터 추가 기능 수행 
		if (new_name != null) {
			HttpSession session = request.getSession();  // 현재 세션에 저장된 속성 값 확인
			MemberVO memberVO = new MemberVO(new_name, new_tel, new_id, new_pwd);  // MemberVO 객체 생성
			MemberDAO memberDAO = new MemberDAO();  // MemberDAO 객체 생성
			boolean result = memberDAO.addMember(memberVO);  // MEMBER table에 INSERT 수행, 수행 결과를 result에 저장
			
			// INSERT 성공할 경우
			if (result) {
				session.setAttribute("check_insert", true);  // 성공 여부를 session 내장 객체에 바인딩
			
			// INSERT 실패할 경우
			} else {
				session.setAttribute("check_insert", false);  // 실패 여부를 session 내장 객체에 바인딩
			}
		}
	}
}
