package ir;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
작성자  : 문혁
클래스 설명 : 파일 다운로드 호출을 처리하는 서블릿. 다운로드 기능만 해당 서블릿에서 직접 처리
참조 문서 : https://www.jb51.net/article/123105.htm
*/
@WebServlet("/ir/fileDownload.do")
public class FileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		// fileIdEnc 파라미터에서 IR_PDF 테이블의 pk인 id값을 가져옴
		String fileIdEnc = (String) request.getParameter("fileIdEnc");
		System.out.println("fileIdEnc= " + fileIdEnc);

		// fileIdEnc에 해당하는 파일 이름 조회
		FileDownloadDAO fileDownloadDAO = FileDownloadDAO.getInstance();
		// getFile 메서드로 얻은 fileDownloadVO 객체에서 파일명만 가져와서 저장
		String fileName = fileDownloadDAO.getFile(fileIdEnc).getFileName();
		// ContentType 설정
		response.setContentType("application/octet-stream; charset=utf-8");
		// 파일 다운로드 형식으로 헤더 설정
		response.setHeader("content-disposition", "attachment; filename=\"" + fileName + "\"");
		// 실제 파일이 저장되어 있는 경로 지정
		String filePath = "/files/" + fileName;
		filePath = this.getServletContext().getRealPath(filePath);

		// 파일 경로로 부터 해당 파일 다운로드
		InputStream in = new FileInputStream(filePath);
		OutputStream out = response.getOutputStream();
		int count = 0;
		byte[] bytes = new byte[1024];
		while ((count = in.read(bytes)) != -1) {
			out.write(bytes, 0, count);
		}
		in.close();
		out.close();

	}

}