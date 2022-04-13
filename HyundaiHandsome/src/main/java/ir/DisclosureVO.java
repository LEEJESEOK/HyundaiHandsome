package ir;

/*
작성자  : 문혁
클래스 설명 : 공시페이지의 DB Disclosure테이블 호출에 대한 정보를 담을 VO객체 
*/
public class DisclosureVO {
	private int disclosureId;
	private String disclosureName;
	private String presenter;
	private String indate;
	private String url;

	public int getDisclosureId() {
		return disclosureId;
	}

	public void setDisclosureId(int disclosureId) {
		this.disclosureId = disclosureId;
	}

	public String getDisclosureName() {
		return disclosureName;
	}

	public void setDisclosureName(String disclosureName) {
		this.disclosureName = disclosureName;
	}

	public String getPresenter() {
		return presenter;
	}

	public void setPresenter(String presenter) {
		this.presenter = presenter;
	}

	public String getIndate() {
		return indate;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}