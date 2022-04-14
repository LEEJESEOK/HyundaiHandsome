package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

/*  이지은 작성
 *  웹 브라우저에서 관리자 목록 페이지로 요청 시 기능 수행
 *  
 *  1. MEMBER table로부터 관리자 데이터를 SELECT
 *  2. 이름, 전화번호, ID 출력
 */

public class ListMemberCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemberDAO memberDAO = new MemberDAO();  // MemberDAO 객체 생성
		List<MemberVO> memberList = memberDAO.listMember();  // MEMBER table에 SELECT 수행, 수행 결과를 memberList에 저장
		
		request.setAttribute("memberList", memberList);  // SELECT문 수행 결과를 request 내장 객체에 바인딩
	}
}