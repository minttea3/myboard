package kong.my.domain;

public class HotPlaceVO {
	private int h_code;			// 순번
	private String s_code;		// 지역
	private String t_code;		// 테마
	private String shop_name;	// 가게 이름
	private String image;		// 이미지
	private String loc;			// 위치
	private String hours;		// 영업시간
	private String menu_price;	// 메뉴, 가격
	private String comments;	// 댓글
	private int h_order; 		// 정렬 순서
	private String s_name; 		// 지역명(서울 테이블)
	private String t_name;		// 테마명(테마 테이블)
	
	public int getH_code() {
		return h_code;
	}
	public void setH_code(int h_code) {
		this.h_code = h_code;
	}
	public String getS_code() {
		return s_code;
	}
	public void setS_code(String s_code) {
		this.s_code = s_code;
	}
	public String getT_code() {
		return t_code;
	}
	public void setT_code(String t_code) {
		this.t_code = t_code;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public int getH_order() {
		return h_order;
	}
	public void setH_order(int h_order) {
		this.h_order = h_order;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	

}
