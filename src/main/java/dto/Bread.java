package dto;

import java.io.Serializable;

public class Bread implements Serializable {
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String breadId;    //상품 아이디
	private String bname;        //상품명
	private Integer unitPrice;   //상품 가격
	private String description;  //상품 설명
	private String category;     //분류
	private long unitInstock;    //재고 수
	private String filename;     //제품이미지 파일명 
	private int quantity;        //장바구니에 담은 개수
	private int sum; //장바구니 총액
	
	public Bread() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Bread(String breadId, String bname, Integer unitPrice) {
		super();
		this.breadId = breadId;
		this.bname = bname;
		this.unitPrice = unitPrice;
	}
	

	public String getBreadId() {
		return breadId;
	}
	public void setBreadId(String breadId) {
		this.breadId = breadId;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
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


	public long getUnitInstock() {
		return unitInstock;
	}


	public void setUnitInstock(long unitInstock) {
		this.unitInstock = unitInstock;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


}