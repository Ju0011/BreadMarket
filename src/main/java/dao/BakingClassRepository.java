package dao;

import java.util.ArrayList;

import dto.BakingClass;

public class BakingClassRepository {

	private ArrayList<BakingClass> listOfBakingClasses = new ArrayList<BakingClass>();
	private static BakingClassRepository instance = new BakingClassRepository();

	public static BakingClassRepository getInstance(){
		return instance;
	} 
	
	public BakingClassRepository() {
		
		BakingClass TCake = new BakingClass("C1234", "티라미수 케이크", 50000);
		TCake.setDescription("티라미수 케이크 만들기");
		TCake.setCategory("Cake");
		TCake.setUnitsInStock(4);
		TCake.setFilename("P1238.png");
		
		BakingClass BaskCake = new BakingClass("C1235", "바스크 치즈 케이크", 70000);
		BaskCake.setDescription("바스크 치즈 케이크 만들기");
		BaskCake.setCategory("Cake");
		BaskCake.setUnitsInStock(6);
		BaskCake.setFilename("P1239.png");  

		BakingClass Cookie = new BakingClass("C1236", "ChocoCookie", 50000);
		Cookie.setDescription("초코쿠키 만들기");
		Cookie.setCategory("Cookie");
		Cookie.setUnitsInStock(6);
		Cookie.setFilename("P1240.jpg");

		listOfBakingClasses.add(BaskCake);
		listOfBakingClasses.add(TCake);
		listOfBakingClasses.add(Cookie);
	}

	public ArrayList<BakingClass> getAllProducts() {
		return listOfBakingClasses;
	}
	
	public BakingClass getClassById(String classId) {
		BakingClass classById = null;

		for (int i = 0; i < listOfBakingClasses.size(); i++) {
			BakingClass product = listOfBakingClasses.get(i);
			if (product != null && product.getClassId() != null && product.getClassId().equals(classId)) {
				classById = product;
				break;
			}
		}
		return classById;
	}	
	//6장. 상품 정보 등록 메소드
	public void addProduct(BakingClass product) {
		listOfBakingClasses.add(product);
	}
}