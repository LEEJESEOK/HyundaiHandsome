package media.news;

/*
작성자  : 고석준
클래스 설명 : News 와 DB사이의 호출에서 정보를 담을VO객체 
*/
public class NewsVO {
	private int id;
	private String title;
	private String content;
	private String imageId;
	private String thumnailId;
	private String createDate;
	
	private String uri;
	
	private int prevId;
	private String prevTitle;
	private int nextId;
	private String nextTitle;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage_id() {
		return imageId;
	}
	public void setImageId(String imageId) {
		this.imageId = imageId;
	}
	public String getThumnailId() {
		return thumnailId;
	}
	public void setThumnailId(String thumnailId) {
		this.thumnailId = thumnailId;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	public int getPrevId() {
		return prevId;
	}
	public void setPrevId(int prevId) {
		this.prevId = prevId;
	}
	public String getPrevTitle() {
		return prevTitle;
	}
	public void setPrevTitle(String prevTitle) {
		this.prevTitle = prevTitle;
	}
	public int getNextId() {
		return nextId;
	}
	public void setNextId(int nextId) {
		this.nextId = nextId;
	}
	public String getNextTitle() {
		return nextTitle;
	}
	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String getImageId() {
		return imageId;
	}
}
