package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

public class AddMemberCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String new_name = request.getParameter("new_name");
		String new_tel = request.getParameter("new_tel");
		String new_id = request.getParameter("new_id");
		String new_pwd = request.getParameter("new_pwd");
		
		if (new_name != null) {
			HttpSession session = request.getSession();
			MemberVO memberVO = new MemberVO(new_name, new_tel, new_id, new_pwd);
			MemberDAO memberDAO = new MemberDAO();
			boolean result = memberDAO.addMember(memberVO);
			
			if (result) {
				session.setAttribute("check_insert", true);
				session.setAttribute("new_name", new_name);
				session.setAttribute("new_tel", new_tel);
				session.setAttribute("new_id", new_id);
				session.setAttribute("new_pwd", new_pwd);
			} else {
				session.setAttribute("check_insert", false);
			}
			
		}
	}

}
