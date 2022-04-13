package member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.Command;

public class PageCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("login_id");
		
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO(user_id);
		List<MemberVO> info = memberDAO.getInfo(memberVO);
		
		request.setAttribute("info", info);
		System.out.println("infowwwwww:" + info.get(0) );
	
	}

}
