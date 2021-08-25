package kong.my.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	 
	 //관리자 페이지 이동
	 @RequestMapping(value="/adminList", method=RequestMethod.GET) //url mapping
	 public String adminList(Model model) throws Exception{
		 
		//서울 전국 구 리스트
		 List<SeoulVO> list = sservice.seoulList();
		 model.addAttribute( "list", list );
		 
		 return "/hotPlace/adminList";
	 }
	 // 관리자 페이지 - 서울시 구 등록
	 @RequestMapping(value="/adminList", method=RequestMethod.POST) //url mapping
	 public String admin_addZoneName(Model model, SeoulVO vo) throws Exception{
		sservice.addZone(vo);
		 return "redirect:adminList"; 
	 }
	 // 관리자페이지 - 서울시 구 수정
	 
	 @RequestMapping(value="/adminLists", method=RequestMethod.POST) //url mapping
	 public String admin_updateZoneName(Model model, String s_code) throws Exception{
		 System.out.println("수정하러 들어옴~!");
		 System.out.println(s_code+"들어왔어~~");
//		 sservice.updateZone(vo);
		 return "/hotPlace/adminList";
	 }
}
	 
	 

