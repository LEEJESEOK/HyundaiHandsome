package media.collection;

/*
작성자  : 고석준
클래스 설명 : Collection 관 DB사이의 정보를 담을VO객체 
*/
public class CollectionVO {
	private String collectionId;
	private String fileName;
	
	private boolean isThumnail;
	private String thumnailId;
	private String thumnailURI;
	
	private String imageId;
	private String imageURI;
	
	private String brandSS;
	private String brandName;
	
	
	public CollectionVO() {
		
	}
	
	public CollectionVO(String fileName, boolean isThumnail, String brandSS, String brandName) {
		this.fileName = fileName;
		this.isThumnail = isThumnail;
		this.brandSS = brandSS;
		this.brandName = brandName;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public boolean isThumnail() {
		return isThumnail;
	}
	public void setThumnail(boolean isThumnail) {
		this.isThumnail = isThumnail;
	}
	public String getBrandSS() {
		return brandSS;
	}
	public void setBrandSS(String brandSS) {
		this.brandSS = brandSS;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public void setCollectionId(String collectionId) {
		// TODO Auto-generated method stub
		this.collectionId = collectionId;
	}
	public String getCollectionId() {
		return collectionId;
	}

	public String getThumnailId() {
		return thumnailId;
	}

	public void setThumnailId(String thumnailId) {
		this.thumnailId = thumnailId;
	}

	public String getThumnailURI() {
		return thumnailURI;
	}

	public void setThumnailURI(String thumnailURI) {
		this.thumnailURI = thumnailURI;
	}

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public String getImageURI() {
		return imageURI;
	}

	public void setImageURI(String imageURI) {
		this.imageURI = imageURI;
	}
	
}
