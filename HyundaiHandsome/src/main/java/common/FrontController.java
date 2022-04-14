package common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.*;

/*  이지은 작성
 *  "*.do" 패턴을 모두 처리하는 FrontController 클래스
 *  
 *  1. 클라이언트의 요청을 FrontController에서 한 번에 처리
 *  2. Command 패턴을 함께 사용해, 각 요청의 직접적인 처리는 분리
 *  3. COMPANY 관련, MEMBER 관련 서블릿 처리
 */

//@WebServlet("*.do")
public class FrontController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public FrontController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doHandle(request, response);
	}
	
	/*  이지은 작성
	 *  my_alert(response, message, page): 경고창을 띄운 후 해당 주소로 이동하는 메서드
	 *  	message: 경고창에 띄울 메세지
	 *  	page: 이동할 페이지 주소
	 */
	private void my_alert(HttpServletResponse response, String message, String page) throws IOException {
		PrintWriter out = response.getWriter();
		out.printf("<script>alert('%s'); location.href='%s';</script>", message, page);
		out.flush();
	}
	
	/*  이지은 작성
	 *  doHandle(request, response): GET 방식과 POST 방식의 요청을 동시에 처리하는 메서드
	 */
	public void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());
		// System.out.println("command:" + command);
		
		Command my_command = null;
		String page = "";  		// 이동할 주소를 저장
		Boolean flag = true;	// flag가 true일 경우 저장된 주소로 forward	
	
	/*
	 ************************************************************* COMPANY
	 ***** 이지은 작성
	 ***** HANDSOME 소개 페이지 (COMPANY)
	 ***** 서버에서 처리할 기능은 없어, 각 JSP 담당 서블릿 생성은 생략
	 */
		if(command.equals("/company/aboutHandsome.do")){		// COMPANY - ABOUT 한섬
			// my_command = new AboutHandsomeCommand();
			// my_command.execute(request, response);
			page = "/company/aboutHandsome.jsp";
			
		} else if(command.equals("/company/ceoMessage.do")){  	// COMPANY - CEO 메시지
			page = "/company/ceoMessage.jsp";
			
		} else if(command.equals("/company/history01.do")){ 	// COMPANY - 연혁(2012~현재)
			page = "/company/history01.jsp";
			
		} else if(command.equals("/company/history02.do")){  	// COMPANY - 연혁(1987~2011)
			page = "/company/history02.jsp";
			
		} else if(command.equals("/company/ethicalMgmt01.do")){	// COMPANY - 윤리경영(그룹윤리경영)
			page = "/company/ethicalMgmt01.jsp";
			
		} else if(command.equals("/company/ethicalMgmt02.do")){ // COMPANY - 윤리경영(그룹윤리강령)
			page = "/company/ethicalMgmt02.jsp";
			
		} else if(command.equals("/company/ethicalMgmt03.do")){ // COMPANY - 윤리경영(임직원 윤리실천경영)
			page = "/company/ethicalMgmt03.jsp";
			
		} else if(command.equals("/company/wayToCome.do")){  	// COMPANY - 오시는 길
			page = "/company/wayToCome.jsp";
		// 혁 - IR 파트에서도 서버에서 처리하는 기능이 없는 부분은 servlet 생략
		} else if(command.equals("/ir/governance01.do")) {
			page = "/ir/governance01.jsp";
		} else if(command.equals("/ir/governance02.do")) {
			page = "/ir/governance02.jsp";
		} else if(command.equals("/ir/governance03.do")) {
			page = "/ir/governance03.jsp";
		} else if(command.equals("/ir/governance04.do")) {
			page = "/ir/governance04.jsp";
		} else if(command.equals("/ir/governance05.do")) {
			page = "/ir/governance05.jsp";
		} else if(command.equals("/ir/governance06.do")) {
			page = "/ir/governance06.jsp";
		} else if(command.equals("/ir/financialInfo01.do")) {
			page = "/ir/financialInfo01.jsp";
		} else if(command.equals("/ir/financialInfo02.do")) {
			page = "/ir/financialInfo02.jsp";
		} else if(command.equals("/ir/financialInfo03.do")) {
			page = "/ir/financialInfo03.jsp";
		} 
	/*
	 ************************************************************* MEMBER
	 ***** 이지은 작성
	 ***** HANDSOME 페이지 관리자만 접근 가능한 페이지
	 ***** 세션 존재 여부 및 로그인 여부를 확인 후 로직 수행
	 ***** 로그인 상태가 아니라면 로그인 화면으로 이동
	 */
		 else if(command.equals("/member/login.do")) {			// MEMBER - 로그인
			// 세션 존재 여부 확인
			HttpSession session = request.getSession(false);
			my_command = new LoginCommand();
			
			// 세션이 존재하지 않을 경우
			if (session == null) {  // 로그인 화면으로 이동
				page = "/member/login.jsp";
			
			// 세션이 존재할 경우
			} else {
				my_command.execute(request, response);
				// 로그인 상태 확인
				Boolean isLogon = (Boolean)session.getAttribute("isLogon");
				
				// 로그인 이력이 없을 경우
				if(isLogon == null) {  // 로그인 화면으로 이동
					page = "/member/login.jsp";
				
				// 로그인에 성공할 경우
				} else if (isLogon == true) {  // 페이지 관리 화면으로 이동
					response.sendRedirect("/ko/member/listMember.do");
					flag = false;  
				
				// 로그인에 실패할 경우
				} else {  // 경고창을 띄우고 로그인 화면으로 이동
					session.removeAttribute("isLogon");
					my_alert(response, "로그인 실패", "/ko/member/login.do");
					flag = false;
				}
			}
			
		} else if(command.equals("/member/logout.do")) { 		// MEMBER - 로그아웃
			my_command = new LogoutCommand();
			my_command.execute(request, response);
			// 로그아웃 수행 후 메인으로 이동
			response.sendRedirect("/ko/main.do");
			flag = false;
			
		} else if(command.equals("/member/listMember.do")) {	// MEMBER - 관리자 목록
			// 세션 존재 여부 확인
			HttpSession session = request.getSession(false);
			my_command = new ListMemberCommand();
			
			// 세션이 존재하지 않을 경우
			if (session == null) {  // 경고창을 띄우고 로그인 화면으로 이동
				my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
				flag = false;
			
			// 세션이 존재할 경우
			} else {
				// 로그인 상태 확인
				Boolean isLogon = (Boolean)session.getAttribute("isLogon");
				
				// 로그인 상태가 아닐 경우
				if(isLogon == null) {  // 경고창을 띄우고 로그인 화면으로 이동
					my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
					flag = false;
				
				// 로그인 상태일 경우
				} else {  // 관리자 목록 화면으로 이동
					my_command.execute(request, response);
					page = "/member/listMember.jsp";
				}	
			}
			
		} else if(command.equals("/member/addMember.do")) {		// MEMBER - 관리자 추가
			// 세션 존재 여부 확인
			HttpSession session = request.getSession(false);
			my_command = new AddMemberCommand();
			
			// 세션이 존재하지 않을 경우
			if (session == null) {  // 경고창을 띄우고 로그인 화면으로 이동
				my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
				flag = false;
			
			// 세션이 존재할 경우
			} else {
				my_command.execute(request, response);
				// 로그인 상태 및 데이터 추가 상태 확인
				Boolean isLogon = (Boolean)session.getAttribute("isLogon");
				Boolean check_insert = (Boolean)session.getAttribute("check_insert");
				
				// 로그인 상태가 아닐 경우
				if(isLogon == null) {  // 경고창을 띄우고 로그인 화면으로 이동
					my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
					flag = false;
				
				// 로그인 상태일 경우
				} else {
					// 추가할 데이터가 아직 없을 경우
					if(check_insert == null) {  // 관리자 추가 화면으로 이동
						my_command.execute(request, response);
						page = "/member/addMember.jsp";
					
					// 데이터 추가를 성공할 경우
					} else if(check_insert == true){
						// 기존 추가 기록을 삭제하고 관리자 목록 화면으로 이동
						session.removeAttribute("check_insert");
						page = "/member/listMember.do";
					
					// 데이터 추가를 실패할 경우
					} else {
						// 기존 추가 기록을 삭제하고 관리자 추가 화면으로 다시 이동
						session.removeAttribute("check_insert");
						my_alert(response, "정보를 다시 입력해주세요.", "/ko/member/addMember.do");
						flag = false;
					}
				}	
			}
			
		} else if(command.equals("/member/manageMedia.do")) {	// MEMBER - MEDIA 관리
			// 세션 존재 여부 확인
			HttpSession session = request.getSession(false);
			
			// 세션이 존재하지 않을 경우
			if (session == null) {  // 경고창을 띄우고 로그인 화면으로 이동
				my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
				flag = false;
			
			// 세션이 존재할 경우
			} else {
				// 로그인 상태 확인
				Boolean isLogon = (Boolean)session.getAttribute("isLogon");
				
				// 로그인 상태가 아닐 경우
				if(isLogon == null) {  // 경고창을 띄우고 로그인 화면으로 이동
					my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
					flag = false;
				
				// 로그인 상태일 경우
				} else {  // media 업로드 화면으로 이동
					page = "/member/manageMedia.jsp";
				}	
			}
			
		} else if(command.equals("/member/myPage.do")) {	// MEMBER - MY PAGE
			// 세션 존재 여부 확인
			HttpSession session = request.getSession(false);
			my_command = new PageCommand();
			
			// 세션이 존재하지 않을 경우
			if (session == null) {  // 경고창을 띄우고 로그인 화면으로 이동
				my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
				flag = false;
			
			// 세션이 존재할 경우
			} else {
				// 로그인 상태 확인
				Boolean isLogon = (Boolean)session.getAttribute("isLogon");
				
				// 로그인 상태가 아닐 경우
				if(isLogon == null) {  // 경고창을 띄우고 로그인 화면으로 이동
					my_alert(response, "로그인이 필요합니다.", "/ko/member/login.do");
					flag = false;
				
				// 로그인 상태일 경우
				} else {  // MY PAGE 화면으로 이동
					my_command.execute(request, response);
					page = "/member/myPage.jsp";
				}	
			}
		}
	/*
	 ************************************************************* ERROR
	 */
		else {  // 일치하는 *.do 패턴이 없을 경우 404
			page = "/error.jsp";
		}
	/*
	 ************************************************************* 최종 처리
	 */
		if(flag) {
			RequestDispatcher dispatch = request.getRequestDispatcher(page);
			dispatch.forward(request, response);
		}
	}
}