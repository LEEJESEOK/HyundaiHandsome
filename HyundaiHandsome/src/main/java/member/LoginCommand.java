package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

/*  이지은 작성
 *  웹 브라우저에서 로그인 페이지로 요청 시 기능 수행
 *  
 *  1. 클라이언트로부터 아이디, 비밀번호 GET
 *  2. 해당 정보와 일치하는 데이터가 MEMBER table에 존재하는지 확인
 */

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 클라이언트로부터 아이디, 비밀번호 GET
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		
		// REQUEST에 데이터가 있다면, 로그인 기능 수행
		if (user_id != null) {
			HttpSession session = request.getSession();  // 현재 세션에 저장된 속성 값 확인
			
			// 사용자가 아이디나 비밀번호를 입력하지 않았을 경우
			if(user_id.length() == 0 || user_pwd.length() == 0){
				session.setAttribute("isLogon", false);  // 실패 여부를 session 내장 객체에 바인딩
			
			// 사용자가 아이디나 비밀번호를 모두 입력한 경우
			} else {
				MemberVO memberVO = new MemberVO(user_id, user_pwd);  // MemberVO 객체 생성
				MemberDAO memberDAO = new MemberDAO();  // MemberDAO 객체 생성
				boolean result = memberDAO.isExisted(memberVO);  // 아이디와 비밀번호 일치 여부 확인, 결과를 result에 저장
				
				// 아이디와 비밀번호가 모두 일치할 경우
				if (result) {
					session.setAttribute("isLogon", true);  // 성공 여부를 session 내장 객체에 바인딩
					session.setAttribute("login_id", user_id);
					session.setAttribute("login_pwd", user_pwd);
				
				// 아이디 혹은 비밀번호가 일치하지 않을 경우
				} else {
					session.setAttribute("isLogon", false);  // 실패 여부를 session 내장 객체에 바인딩
				}
			}
		}
	}
}