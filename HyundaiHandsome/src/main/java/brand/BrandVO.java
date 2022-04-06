package brand;

public class BrandVO {
	private int id;
	private int type;
	private String name;
	private String ss;
	private String desc;

	public BrandVO() {
		super();
	}

	public BrandVO(int id, int type, String name, String ss, String desc) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.ss = ss;
		this.desc = desc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSs() {
		return ss;
	}

	public void setSs(String ss) {
		this.ss = ss;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}
