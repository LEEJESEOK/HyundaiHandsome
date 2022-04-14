package common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*  이지은 작성 
 *  Command 인터페이스
 */

public interface Command {
	void execute(HttpServletRequest request, HttpServletResponse response);
}
