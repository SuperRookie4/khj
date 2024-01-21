package welfareData;

public class welMenu {
	/*menu.jsp에서 참조가 안되서 private, getter로 전환*/
	private String cate;
	private String main;
	private String title;
	
	public welMenu(String cate, String main, String title) {
		this.cate = cate;
		this.main = main;
		this.title = title;
	}
	public String getCate() {
		return cate;
	}
	public String getMain() {
		return main;
	}
	public String getTitle() {
		return title;
	}
}
