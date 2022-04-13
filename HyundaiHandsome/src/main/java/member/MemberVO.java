package member;

/*
 *  이지은 작성
 *  Member 관련 데이터 객체
 */

public class MemberVO {
	private String id;
	private String name;
	private String tel;
	private String pwd;
	
	public MemberVO() {
		System.out.println("MemberVO 생성자 호출");
	}
	
	public MemberVO(String id) {
		this.id = id;
	}
	
	
	public MemberVO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	public MemberVO(String name, String tel, String id, String pwd) {
		this.name = name;
		this.tel = tel;
		this.id = id;
		this.pwd = pwd;
	}
	
	public MemberVO(String name, String tel, String id) {
		this.name = name;
		this.tel = tel;
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}