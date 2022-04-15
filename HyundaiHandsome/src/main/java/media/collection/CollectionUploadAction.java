package media.collection;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
 클래스 설명 : Collection을 새로 등록하는 화면(GET)과 실제 등록하는로직(POST)요청을 받기 위한 서블릿 클래스이다.
 	   파일을 넘겨줄때는 enctype="multiparyt/form-data"이므로 파일을 제외한 나머지 정보는 쿼리스트링으로 값을 넘겨준다.
 	   넘겨주는 값이 어차피 보안에 위배되는 값은 아니여서 노출되어도 상관은 없다.
 	   */
public class CollectionUploadAction implements Action{
	// 이 path는 WAS 프로젝트의 위치에 맞춰줘야함.
	private final String filePath = "/Users/ksj/HyundaiHandsome/HyundaiHandsome/WebContent/images/media/collection"; 
	private static CollectionUploadAction instacne = new CollectionUploadAction();
	private CollectionUploadAction() {}
	public static CollectionUploadAction getInstacne() {
		// TODO Auto-generated method stub
		return instacne;
	}
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if("GET".equals(request.getMethod())){
			doGet(request, response);//화면만 호출 할 때 
		}else if("POST".equals(request.getMethod())) {
			doPost(request, response);//POST요청으로 Collection을 등록할때.
		}
				
	}
	
	private void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher rd = request.getRequestDispatcher("/media/collection/collectionUploadForm.jsp");
		rd.forward(request, response);
		
	}
	
	private void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String encoding = "utf-8";
			File currentDirPath = new File(filePath);
			//업로드 파일 위치 지정 
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//파일 경로 입력 
			factory.setRepository(currentDirPath);
			//
			factory.setSizeThreshold(1024 * 1024);

			ServletFileUpload upload = new ServletFileUpload(factory);
			String brandSS = request.getParameter("brandss");
			String brandName = request.getParameter("brandName");
			List<String> fileNameList = new ArrayList<>();
			List<CollectionVO> collections = new ArrayList<>();

			HashMap<FileItem, File> fileMap = new HashMap<>();
			try {
				List items = upload.parseRequest(request);
				
				for (int i = 0; i < items.size(); i++) {
					
					FileItem fileItem = (FileItem) items.get(i);
					
					if(fileItem.isFormField()) //form으로 넘겨져 오는text값은 무시한다. queryString으로 값을 받아온다. 쿼리스트링을 쓴 이유는 하나의 Collection에 여러가지 이미지가 넘어오기 때문에 쿼리스트링으로 브랜드 이름과 시즌코드를 받아오는게 더 간편하다.
						continue;
					
					String fileName = null;
					File uploadFile = null;
					if (fileItem.getSize() > 0) {
						//
						fileName = fileItem.getName();
						//파일 이름 설정 
						uploadFile = new File(currentDirPath + "/" + fileName);
						//파일 업로드 
						
						//fileItem.write(uploadFile);
						fileMap.put(fileItem, uploadFile);
						fileNameList.add(fileName);
					} // end if
					CollectionVO vo =null;
					if("thumnail".equals(fileItem.getFieldName())){
						vo = new CollectionVO(fileName,true ,brandSS, brandName);
					}else {
						vo = new CollectionVO(fileName, false, brandSS, brandName);
					}
					collections.add(vo);
					
				} // end for
				
				boolean done = CollectionDAO.getIntance().insertCollection(collections);//프로시저 호출 
				if(done) {
					for (Entry<FileItem, File> entrySet : fileMap.entrySet()) {
						entrySet.getKey().write(entrySet.getValue());//file업로드 
					}
					
				}else {
					my_alert(response, "Collection Upload Fail.","/ko/media/collectionUpload.do");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			my_alert(response, "Collection Upload Success.","/ko/media/collectionList.do");
			
//			response.sendRedirect("/ko/media/collectionUpload.do");
	}
	private void my_alert(HttpServletResponse response, String message, String page) throws IOException {
		PrintWriter out = response.getWriter();
		out.printf("<script>alert('%s'); location.href='%s';</script>", message, page);
		out.flush();
	}
	
}