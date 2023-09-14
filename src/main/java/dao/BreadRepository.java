package dao;

import java.util.ArrayList;
import dto.Bread;

public class BreadRepository {
	private ArrayList<Bread> listOfProducts = new ArrayList<Bread>();
	private static BreadRepository instance = new BreadRepository();
	public static BreadRepository getInstance() {
		return instance;
	}
	
	public BreadRepository() {
		// TODO Auto-generated constructor stub
		Bread croissant = new Bread("P1234", "크루아상", 1800);
		croissant.setDescription("버터가 듬뿍 들어가 고소한 풍미가 뛰어나고 한겹 한겹 정성으로 접어 만들어 패스트리의 결이 살아있는 오리지널 크루아상");
		croissant.setCategory("Bread");
		croissant.setUnitInstock(100);
		croissant.setFilename("P1234.png");
		
		Bread chococake = new Bread("P1235", "초코시루", 35000);
		chococake.setDescription("초코 시트에 톡톡 튀는 달콤상큼 베리 맛 크림이 샌드되어 있는 묵직한 초코시루");
		chococake.setCategory("Cake");
		chococake.setUnitInstock(100);
		chococake.setFilename("P1235.png");
		
		Bread macaron = new Bread("P1236", "수제 마카롱 8개입", 23000);
		macaron.setDescription("포장/선물용 최고~ 새로 출시 된 '수제 마카롱 세트'로 더욱 달달하고 풍성하게~~");
		macaron.setCategory("Cookie");
		macaron.setUnitInstock(100);
		macaron.setFilename("P1236.png");
		
		Bread saltbread = new Bread("P1237", "시오빵", 2000);
		saltbread.setDescription("바삭한 겉 식감과, 한입 베어 물었을 때 고소한 버터의 풍미가 더해져 더욱 담백 짭조름한 소금빵(따듯하게 드시면 더 맛있습니다:))");
		saltbread.setCategory("Bread");
		saltbread.setUnitInstock(100);
		saltbread.setFilename("P1237.png");
		
		Bread tiramisu = new Bread("P1238", "티라미수", 6500);
		tiramisu.setDescription("마스카포네 치즈와 진한 에스프레소 시럽으로 샌드된 촉촉한 시트 위에 순도 높은 발로나 파우더를 올린 이탈리아 대표 무스 케이크 티라미수");
		tiramisu.setCategory("Cake");
		tiramisu.setUnitInstock(100);
		tiramisu.setFilename("P1238.png");
		
		Bread basque = new Bread("P1239", "바스크 치즈케이크", 5500);
		basque.setDescription("필라델피아 크림치즈 50% 이상 고온에 익혀 부드러움과 꾸덕함을 동시에 밀도가 꽉꽉 차있는 치즈케이크입니다.");
		basque.setCategory("Cake");
		basque.setUnitInstock(100);
		basque.setFilename("P1239.png");
		
		listOfProducts.add(croissant);
		listOfProducts.add(chococake);
		listOfProducts.add(macaron);
		listOfProducts.add(saltbread);
		listOfProducts.add(tiramisu);
		listOfProducts.add(basque);
		
		
		
	}
	
	public ArrayList<Bread> getAllProducts() {
		return listOfProducts;
	}

	public Bread getBreadById(String breadId) {
		Bread breadById=null;
		for(int i=0; i<listOfProducts.size(); i++) {
			Bread bread=listOfProducts.get(i);
			if(bread!=null && bread.getBreadId()!=null && bread.getBreadId().equals(breadId)) {
				breadById=bread;
				break;
			}
		}
		return breadById;
	}
	
	
	public void addBread(Bread bread) {
		listOfProducts.add(bread);
	}
	
	
}
