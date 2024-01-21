package welfareData;

import java.util.ArrayList;
import java.util.HashMap;

import jakarta.servlet.http.HttpServletRequest;


public class welfareData {
	//public String mainUrl;
	private String mainUrl;
	
	public welfareData(HttpServletRequest request) {
		
		//첫 페이지
		String cate = "front";
		String main = "front";
		
		//각 폴더에서 값 넣을 예정
		if(request.getParameter("cate")!=null){
			cate = request.getParameter("cate");
		}
		
		if(request.getParameter("main")!=null){
			main = request.getParameter("main");
		}
		/* mainUrl = "/include/"+cate+"/"+main+".jsp"; */
		 mainUrl = cate+"/"+main+".jsp"; 
		
		HashMap<String, ArrayList<welMenu>>menuMap = new HashMap();
		ArrayList<welMenu> infos = new ArrayList();
		ArrayList<welMenu> useinfos = new ArrayList();
		ArrayList<welMenu> supports = new ArrayList();
		ArrayList<welMenu> commutes = new ArrayList();
		
		//기관소개
		infos.add(new welMenu("info", "greetings", "인사말"));
		infos.add(new welMenu("info", "corporation", "운영법인"));
		infos.add(new welMenu("info", "mission", "미션 및 비전"));
		infos.add(new welMenu("info", "goWay", "오시는 길"));
		 
		//사업소개
		useinfos.add(new welMenu("useinfo", "management", "사례관리"));
		useinfos.add(new welMenu("useinfo", "region", "지역조직화"));
		useinfos.add(new welMenu("useinfo", "service", "서비스제공"));
		
		//후원 및 봉사
		supports.add(new welMenu("support", "supp", "후원"));    
		supports.add(new welMenu("support", "volunteer", "봉사"));    
		
		//소통공간
		commutes.add(new welMenu("commute", "information", "소통공간"));  
		
		//map put(각 카테코리, 해당 메뉴)
		menuMap.put("info", infos);
		menuMap.put("useinfo", useinfos);
		menuMap.put("support", supports);
		menuMap.put("commute", commutes);
		
		request.setAttribute("menus", menuMap.get(cate));
	}
	
	public String getMainUrl() {
		return mainUrl;
	}	
}
