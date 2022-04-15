package media.news;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import util.Action;

/*
작성자  : 고석준
클래스 설명 : News Upload하는 화면과 업로드 하는 정보를 저장하는 호출을 처리하기 위한 서블릿 클래스.
*/
public class NewsUploadAction implements Action{
	// 이 path는 WAS 프로젝트의 위치에 맞춰줘야함.
	private final String filePath = "C:\\MVC_workspaces\\HyundaiHandsome\\HyundaiHandsome\\WebContent\\images\\media\\news";
	private static NewsUploadAction instance = new NewsUploadAction();
	
	public static NewsUploadAction getInstance() {
		// TODO Auto-generated method stub
		return instance;
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if("GET".equals(request.getMethod())) {
			doGet(request,response);
		}else if("POST".equals(request.getMethod())) {
			doPost(request,response);
		}
		
	}
	
	//GET일때는 화면 호출 
	private void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = request.getRequestDispatcher("/media/news/newsUploadForm.jsp");
		rd.forward(request, response);
	}

	//POST일때는 News INsert 처
	private void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		File currentDirPath = new File(filePath);
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(currentDirPath);
		factory.setSizeThreshold(1024*1024);
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		HashMap<FileItem, File>  fileMap = new HashMap<>();//저장 프로시저를 실행한 후 파일을 저장하기 위해서 파일의 내용을 담아두는 공간 
		try {
			List items = upload.parseRequest(request);
			NewsVO news = new NewsVO();
			for(int i =0 ; i<items.size(); i++) {
				FileItem fileItem = (FileItem)items.get(i);
				
				if(fileItem.isFormField()) {
					if("title".equals(fileItem.getFieldName())) {
						news.setTitle(fileItem.getString("UTF-8"));
					}else if("content".equals(fileItem.getFieldName())) {
						news.setContent(fileItem.getString("UTF-8"));
					}
				}else {
					String fileName = null;
					File uploadFile = null;
					if(fileItem.getSize() > 0) {
						fileName = fileItem.getName();
						uploadFile = new File(currentDirPath+ "/" + fileName);
						fileMap.put(fileItem, uploadFile);
					}
					
					if("thumnailId".equals(fileItem.getFieldName())) {
						news.setThumnailId(fileName);
					}else if("imageId".equals(fileItem.getFieldName())){
						news.setImageId(fileName);
					}
				}
			}
			boolean done = NewsDAO.getInstance().insertNews(news);
			if(done) {
				for(Entry<FileItem,File>entrySet : fileMap.entrySet()) {
					entrySet.getKey().write(entrySet.getValue());//file업로드
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("/ko/media/newsUpload.do");
	}
	

	

}



















