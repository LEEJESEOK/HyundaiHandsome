package brand;

public class BrandVO {
	int id;
	int type;
	String name;
	String ss;
	String desc;

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

	public String getSS() {
		return ss;
	}

	public void setSS(String ss) {
		this.ss = ss;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
