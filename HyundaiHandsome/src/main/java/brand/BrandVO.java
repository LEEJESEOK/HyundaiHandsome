package brand;

import lombok.Data;

@Data
public class BrandVO {
	protected int id;
	protected int type;
	protected String name;
	protected String ss;
	protected String description;
	protected String mallScriptType;
	protected String mallId;
	
	protected String popImgUri;
	protected String popheadImgUri;
}
