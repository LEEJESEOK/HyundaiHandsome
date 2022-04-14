package company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

/*  이지은 작성 
 *  /company/aboutHandsome.do 처리
 *  
 *  1. execute 메서드에 서버에서 처리할 기능을 작성
 *  2. 현 프로젝트에서는 실제로 사용되지 않음
 */

public class AboutHandsomeCommand implements Command{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {}
}