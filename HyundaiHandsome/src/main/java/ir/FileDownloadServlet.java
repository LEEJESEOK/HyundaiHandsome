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

// ���� ���� https://www.jb51.net/article/123105.htm ���� ���� �ٿ�ε� ����� ������ ����
@WebServlet("/ir/fileDownload.do")
public class FileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// fileIdEnc �Ķ���Ϳ��� IR_PDF ���̺��� pk�� id���� ������
		String fileIdEnc = (String) request.getParameter("fileIdEnc");
		System.out.println("fileIdEnc= " + fileIdEnc);
		
		// fileIdEnc�� �ش��ϴ� ���� �̸� ��ȸ
		FileDownloadDAO fileDownloadDAO = FileDownloadDAO.getInstance();
		String fileName = fileDownloadDAO.getFileName(fileIdEnc);
//		�ѱ� ���ϸ� ����
//		fileName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
//		fileName = URLEncoder.encode(fileName, "UTF-8");
//		�Ѵپȵ�!!!!
		// ContentType ����
		response.setContentType("application/octet-stream; charset=utf-8");
		// ���� �ٿ�ε� �������� ��� ����
		response.setHeader("content-disposition","attachment; filename=\"" + fileName + "\"");
		// ���� ������ ����Ǿ� �ִ� ��� ����
		String filePath = "/files/" + fileName;
		filePath = this.getServletContext().getRealPath(filePath);
		
		// ���� ��η� ���� �ش� ���� �ٿ�ε�
		InputStream in = new FileInputStream(filePath);
		OutputStream out = response.getOutputStream();
		int count = 0;
		byte[] bytes = new byte[1024];
		while((count = in.read(bytes)) != -1) {
			out.write(bytes, 0, count);
		}
		in.close();
		out.close();

	}

}
