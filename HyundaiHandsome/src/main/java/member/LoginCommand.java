package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

/*
 *  이지은 작성 
 *  /member/login.do 처리
 */

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		
		if (user_id != null) {  // user_id가 NULL이면 바로 로그인 초기화면으로 이동
			HttpSession session = request.getSession();
			
			if(user_id.length() == 0 || user_pwd.length() == 0){  // 사용자가 아이디나 비밀번호를 입력하지 않았을 경우
				session.setAttribute("isLogon", false);  // 로그인 시도 결과(실패)를 세션에 기록
				
			} else {  // 사용자가 아이디나 비밀번호를 모두 입력한 경우
				MemberVO memberVO = new MemberVO(user_id, user_pwd);
				MemberDAO memberDAO = new MemberDAO();
				boolean result = memberDAO.isExisted(memberVO);  // 아이디와 비밀번호 일치 여부 확인
				
				if (result) {  // 아이디와 비밀번호가 모두 일치할 경우
					session.setAttribute("isLogon", true);
					session.setAttribute("login_id", user_id);
					session.setAttribute("login_pwd", user_pwd);
					
				} else {  // 아이디 혹은 비밀번호가 일치하지 않을 경우
					session.setAttribute("isLogon", false);
				}
			}
		}
	}
}
