package ir;

/*
작성자  : 문혁
클래스 설명 : 파일 다운로드시 DB IR_PDF 테이블 호출에 대한 정보를 담을 VO객체 
*/
public class FileDownloadVO {
	private String Id;
	private String fileName;

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

}