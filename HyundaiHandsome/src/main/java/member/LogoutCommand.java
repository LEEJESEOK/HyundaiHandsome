package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

/*  이지은 작성
 *  웹 브라우저에서 로그아웃 페이지로 요청 시 기능 수행
 *  
 *  1. 세션을 삭제하여, 로그인 기록 삭제
 */

public class LogoutCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(); 
		session.invalidate();  // 현재 세션 삭제 
	}
}