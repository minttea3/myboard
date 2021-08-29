package kong.my.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kong.my.domain.CsCenterVO;
import kong.my.domain.HotPlaceVO;
import kong.my.domain.SeoulVO;
import kong.my.domain.ThemaVO;
import kong.my.service.hotPlaceService;
import kong.my.service.seoulService;
import kong.my.service.themaService;

@Controller
@RequestMapping("/hotPlace/*")

public class HotPlaceController {
	@Inject
	private seoulService sservice;
	@Inject
	private themaService tservice;
	@Inject
	private hotPlaceService hservice;
	
	
	 @RequestMapping(value="/hotPlaceList", method=RequestMethod.GET) //url mapping
	 public String getHotPlaceList(Model model) throws Exception{
		
		 //서울 전국 구 리스트
		 List<SeoulVO> list = sservice.seoulList();
		 model.addAttribute( "list", list );
		 
		 // 테마 리스트
		 List<ThemaVO> list2 = tservice.themaList();
		 model.addAttribute("list2",list2);
		
		 // 핫플레이스 리스트
		 List<HotPlaceVO> list3 = hservice.hotPlaceList();
		 model.addAttribute( "list3", list3 );
		 return "/hotPlace/hotPlaceList";
		 
	 }
	 @RequestMapping(value="/hotPlaceList", method=RequestMethod.POST) //url mapping
	 public String getHotPlaceSelectList(Model model, String s_code, String t_code) throws Exception{
		 System.out.println("s_code"+s_code);
		 System.out.println("t_code"+t_code);
		 
		//서울 전국 구 리스트
		 List<SeoulVO> list = sservice.seoulList();
		 model.addAttribute( "list", list );
		 
		 // 테마 리스트
		 List<ThemaVO> list2 = tservice.themaList();
		 model.addAttribute("list2",list2);
		 
		 
		 
		 // 구, 테마 선택 검색
		 System.out.println("야호");
		 System.out.println();
		 Map<String,String> map = new HashMap<String, String>();
		 map.put("s_code",s_code);
		 map.put("t_code",t_code);
		 List<HotPlaceVO> list3 = hservice.hotPlaceSearchList(map);
		 model.addAttribute( "list3", list3 );
		 return "/hotPlace/hotPlaceList";
	 }
	 
	 // 관리자 페이지 이동
	 @RequestMapping(value="/adminMain", method=RequestMethod.GET) //url mapping
	 public String goAdminMainPage(Model model) throws Exception{
		 return "/hotPlace/adminMain";
	 }
	 //*****************************************
	 // 서울 '구' 관리 페이지
	 @RequestMapping(value="/adminSeoul", method=RequestMethod.GET) //url mapping
	 public String goAdminSeoulPage(Model model) throws Exception{
		//서울 전국 구 리스트
		 List<SeoulVO> list = sservice.seoulList();
		 model.addAttribute( "list", list );
		 
		 
		 return "/hotPlace/adminSeoul";
	 }
	 
	 // 관리자 페이지 - 서울시 '구' 등록 페이지로 이동
	 @RequestMapping(value = "/seoulCreate", method = RequestMethod.GET)
	    public String getcreate() throws Exception {
	       return "/hotPlace/seoulCreate";
	 }
	 // 관리자 페이지 - 서울시 구 등록
	 @RequestMapping(value="/seoulCreate", method=RequestMethod.POST) //url mapping
	 public String admin_addZoneName(Model model, SeoulVO vo) throws Exception{
		sservice.addZone(vo);
		 return "redirect:adminSeoul"; 
	 }
	 
	// 방명록 상세 페이지로 이동 -- 사용안함.
	    @RequestMapping(value = "/adminSeoulDetail", method = RequestMethod.GET)
	    public String getdetail(Model model, String s_code) {
	    	SeoulVO data = sservice.seoulDetail(s_code); //idx값 넘김
	    	model.addAttribute("data",data);
	       return "/hotPlace/adminSeoulDetail";
	    }
	 
	 
	 // 관리자페이지 - 서울시 구 수정 페이지로 이동
	    @RequestMapping(value = "/seoulUpdate", method = RequestMethod.GET)
	    public String go_update(Model model, String s_code) {
	    	SeoulVO data = sservice.seoulDetail(s_code); //idx값 넘김
	    	model.addAttribute("data",data);
	       return "/hotPlace/seoulUpdate";
	    }  
	    
	 // 관리자페이지 - 서울시 구 수정
	 @RequestMapping(value="/seoulUpdate", method=RequestMethod.POST) //url mapping
	 public String admin_updateZoneName(Model model, SeoulVO vo) throws Exception{
		 sservice.updateZone(vo);
		 return "redirect:adminSeoul"; 
	 }
	 // 관리자페이지 - 서울시 구 삭제
	 @RequestMapping(value = "/seoulDelete", method = RequestMethod.GET)
	    public String seoulDelete(String s_code) throws Exception {
	    	sservice.seoulDelete(s_code);
	       return "redirect:adminSeoul"; 
	 }
	 // 관리자페이지 - 서울  지역명으로 검색
	 @RequestMapping(value = "/seoulSearch", method = RequestMethod.GET)
	    public String seoulSearch(String s_name, Model model) throws Exception {
		List<SeoulVO> list= new ArrayList<SeoulVO>();
		 if(s_name.equals("전체")) {// 전체 입력시
			 list = sservice.seoulList();
		 }else if(s_name.equals("")) { // 입력한 값이 없을시 전체 보기로
		     list = sservice.seoulList();
		 }else { // 입력한 값이 있다면 
			 System.out.println("여기 왔어~");
			 list = sservice.seoulSearchList(s_name);
		 }
		 model.addAttribute("list",list);
	       return "/hotPlace/adminSeoul";
	 }

	 
	 //****************************
	 
	 // 테마 관리 페이지
	 @RequestMapping(value="/adminThema", method=RequestMethod.GET) //url mapping
	 public String goAdminThemaPage(Model model) throws Exception{
		 List<ThemaVO> list = tservice.themaList();
		 model.addAttribute( "list", list );
		 return "/hotPlace/adminThema";
	 }
	 
	// 관리자 페이지 - 테마  등록 페이지로 이동
	 @RequestMapping(value = "/themaCreate", method = RequestMethod.GET)
	    public String go_themaCreatePage() throws Exception {
	       return "/hotPlace/themaCreate";
	    }
	// 테마 등록
	 @RequestMapping(value="/themaCreate", method=RequestMethod.POST) //url mapping
	 public String admin_addThemaName(Model model, ThemaVO vo) throws Exception{
		tservice.addThema(vo);
		 return "redirect:adminThema"; 
	 }
	 //테마 상세 페이지 --사용안함
    @RequestMapping(value = "/adminThemaDetail", method = RequestMethod.GET)
    public String admin_Themadetail(Model model, String t_code) {
    	ThemaVO data = tservice.themaDetail(t_code); //idx값 넘김
    	model.addAttribute("data",data);
       return "/hotPlace/adminThemaDetail";
    }
    // 테마 수정 페이지로 이동
    @RequestMapping(value = "/themaUpdate", method = RequestMethod.GET)
    public String go_adminUpdatePage(String t_code, Model model) throws Exception {
    	ThemaVO data = tservice.themaDetail(t_code);//idx값 넘김
    	model.addAttribute("data",data);
       return "/hotPlace/themaUpdate";
    } 
    // 테마 수정 post
    @RequestMapping(value="/themaUpdate", method=RequestMethod.POST)
    public String themaUpdate(ThemaVO vo) throws Exception {
        tservice.updateThema(vo);
        return "redirect:adminThema"; // 리스트로 리다이렉트
    }
	 
    // 테마 삭제
    @RequestMapping(value = "/themaDelete", method = RequestMethod.GET)
    public String postdelete(String t_code) throws Exception {
    	tservice.themaDelete(t_code);
       return "redirect:adminThema";
    }
	 
	 // 테마 명으로 검색
    
	 @RequestMapping(value = "/themaSearch", method = RequestMethod.GET)
    public String themaSearch(String t_name, Model model) throws Exception {
	List<ThemaVO> list= new ArrayList<ThemaVO>();
	 if(t_name.equals("전체")) {// 전체 입력시
		 list = tservice.themaList();
	 }else if(t_name.equals("")) { // 입력한 값이 없을시 전체 보기로
		 list = tservice.themaList();
	 }else { // 입력한 값이 있다면 
		 System.out.println("여기 왔어~");
		 list = tservice.themaSearchList(t_name);
	 }
	 	model.addAttribute("list",list);
       return "/hotPlace/adminThema";
 }

	 
	 //******************************
	 // 핫플레이스 관리 페이지
	 
	 @RequestMapping(value="/adminHotPlace", method=RequestMethod.GET) //url mapping
	 public String goAdminHotPlacePage(Model model) throws Exception{
		 List<HotPlaceVO> list = hservice.hotPlaceList();
		 model.addAttribute( "list", list );
		 
		 //서울 전국 구 리스트
		 List<SeoulVO> s_list = sservice.seoulList();
		 model.addAttribute( "s_list", s_list );
		 
		 // 테마 리스트
		 List<ThemaVO> t_list = tservice.themaList();
		 model.addAttribute("t_list",t_list);
		 
		 
		 return "/hotPlace/adminHotPlace";
	 }
	// 관리자 페이지 - 핫플레이스  등록 페이지로 이동
	 @RequestMapping(value = "/hotPlaceCreate", method = RequestMethod.GET)
	    public String go_admin_addHotPlacePage(Model model) throws Exception {
		 
		 //서울 전국 구 리스트
		 List<SeoulVO> s_list = sservice.seoulList();
		 model.addAttribute( "s_list", s_list );
		 
		 // 테마 리스트
		 List<ThemaVO> t_list = tservice.themaList();
		 model.addAttribute("t_list",t_list);
		 
	       return "/hotPlace/hotPlaceCreate";
	    }
	 // 핫플레이스 등록
	 @RequestMapping(value="/hotPlaceCreate", method=RequestMethod.POST) //url mapping
	 public String admin_addHotPlace(Model model, HotPlaceVO vo) throws Exception{
		hservice.addHotPlace(vo);
		
		return "redirect:adminHotPlace"; 
	 }
	 //상세페이지 이동 -- 사용안함
	 @RequestMapping(value = "/adminHotPlaceDetail", method = RequestMethod.GET)
	    public String admin_Themadetail(Model model, int h_code) {
		 HotPlaceVO data = hservice.HotPlaceDetail(h_code);
	    	model.addAttribute("data",data);
	       return "/hotPlace/adminHotPlaceDetail";
	 }
	 
	 // 수정페이지 이동 
	 @RequestMapping(value = "/hotPlaceUpdate", method = RequestMethod.GET)
	    public String go_adminHotPlaceUpdatePage(int h_code, Model model) throws Exception {
		 HotPlaceVO data = hservice.HotPlaceDetail(h_code);
	    	model.addAttribute("data",data);
	    	
	    	 //서울 전국 구 리스트
			 List<SeoulVO> s_list = sservice.seoulList();
			 model.addAttribute( "s_list", s_list );
			 
			 // 테마 리스트
			 List<ThemaVO> t_list = tservice.themaList();
			 model.addAttribute("t_list",t_list);
			 
	       return "/hotPlace/hotPlaceUpdate";
	    } 
	 
	 // 수정
	 @RequestMapping(value="/hotPlaceUpdate", method=RequestMethod.POST)
	    public String go_adminHotPlaceUpdate(HotPlaceVO vo) throws Exception {
	        hservice.updateHotPlace(vo);
	        return "redirect:adminHotPlace"; // 리스트로 리다이렉트
	    }
	 // 삭제
	 @RequestMapping(value = "/hotPlaceDelete", method = RequestMethod.GET)
	    public String hotPlaceDelete(int h_code) throws Exception {
	    	hservice.HotPlaceDelete(h_code);
	       return "redirect:adminHotPlace";
	 }
	 
	 // 지역명, 테마, 상호명으로 검색
	 @RequestMapping(value = "/adminHotPlaceSearch", method = RequestMethod.GET)
	 public String adminHotPlaceSearch(String s_name, String t_name, String shop_name, Model model) throws IOException{
	    	System.out.println(s_name);
	    	System.out.println(t_name);
	    	System.out.println(shop_name);
	    	Map<String, Object> map = new HashMap<String,Object>();
			
	    	if(s_name.equals("")) {
	    		
	    	}else {
	    		map.put("s_name", s_name);
	    	}
	    	
	    	if(t_name.equals("")) {
	    		
	    	}else {
	    		map.put("t_name", t_name);
	    	}
	    	if(shop_name.equals("")) {
	    		
	    	}else {
	    		map.put("shop_name", shop_name);
	    	}
	    	List<HotPlaceVO> list = hservice.adminHotPlaceSearch(map);
	    	
	    	model.addAttribute("list",list);
	    	return "/hotPlace/adminHotPlace";
	 
	 
	 
	 }

}
	 
	 

