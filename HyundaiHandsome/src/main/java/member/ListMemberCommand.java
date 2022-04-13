package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class ListMemberCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemberDAO memberDAO = new MemberDAO();
		List<MemberVO> memberList = memberDAO.listMember();
		
		request.setAttribute("memberList", memberList);
	}

}
