package dto;

import java.io.Serializable;

public class BakingClass implements Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;

	private String classId;	//상품 아이디	
	private String cname;		//상품명
	private Integer unitPrice; //상품 가격
	private String description; //상품 설명
	private String category; 	//분류
	private long unitsInStock; //재고수 
	private String filename;    //제품이미지 파일명 (7장 추가)

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public BakingClass() {
		// TODO Auto-generated constructor stub
	}
	public BakingClass(String classId, String cname, Integer unitPrice) {
		super();
		this.classId = classId;
		this.cname = cname;
		this.unitPrice = unitPrice;
	}

}
