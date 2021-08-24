package kong.my.board;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kong.my.domain.CsCenterVO;
import kong.my.service.csCenterService;

@Controller
@RequestMapping("/csCenter/*")

public class CscenterController {
	
	@Inject
	private csCenterService service;
	
	 // 전체 조회  
	 @RequestMapping(value="/csCenterList", method=RequestMethod.GET) //url mapping
	    public String getList( Model model ) throws Exception{
		 	List<CsCenterVO> list = service.csCenterList();
		 	model.addAttribute( "list", list );
	        //board/list.jsp로 포워딩
	        return "/csCenter/csCenterList";
		 	
	    }
	 // 방명록 작성 페이지로 이동
	    @RequestMapping(value = "/csCenterCreate", method = RequestMethod.GET)
	    public String getcreate() throws Exception {
	       return "/csCenter/csCenterCreate";
	    }
	// 방명록 작성 post
	    @RequestMapping(value = "/csCenterCreate", method = RequestMethod.POST)
	    public String postcreate(CsCenterVO vo) throws Exception {
	    	service.csCenterCreate(vo);
	       return "redirect:csCenterList";
	    }
	 // 방명록 상세 페이지로 이동
	    @RequestMapping(value = "/csCenterDetail", method = RequestMethod.GET)
	    public String getdetail(Model model, int idx) {
	    	CsCenterVO data = service.csCenterDetail(idx); //idx값 넘김
	    	model.addAttribute("data",data);
	       return "/csCenter/csCenterDetail";
	    }
	    // 방명록 수정 페이지로 이동
	    @RequestMapping(value = "/csCenterUpdate", method = RequestMethod.GET)
	    public String getupdate(int idx, Model model) throws Exception {
	    	CsCenterVO data = service.csCenterDetail(idx); //idx값 넘김
	    	model.addAttribute("data",data);
	       return "/csCenter/csCenterUpdate";
	    } 
	    // 방명록 수정 post
	    @RequestMapping(value="/csCenterUpdate", method=RequestMethod.POST)
	    public String postupdate(CsCenterVO vo) throws Exception {
	        service.csCenterUpdate(vo);
	        return "redirect:csCenterList"; // 리스트로 리다이렉트
	    }
	    
	    // 방명록 삭제
	    @RequestMapping(value = "/csCenterDelete", method = RequestMethod.GET)
	    public String postdelete(int idx) throws Exception {
	    	service.csCenterDelete(idx);
	       return "redirect:csCenterList";
	    }
	    // 게시물 선택삭제
	    @RequestMapping(value = "/delete")
	    public String ajaxTest(HttpServletRequest request) {
	            
	        String[] ajaxMsg = request.getParameterValues("valueArr");
	       
	        // 형변환
	        int[] ajaxVal = new int[ajaxMsg.length];
	        for(int i = 0; i<ajaxMsg.length; i++) {
	        	ajaxVal[i] = Integer.parseInt(ajaxMsg[i]);
	        }
	        
	        int size = ajaxMsg.length;
	        for(int i = 0; i<size; i++) {
	        	service.csCenterDelete(ajaxVal[i]);
	        }
	        return "redirect:csCenterList";
	    }
	    
	    // 작성자 이름으로 검색
	    @RequestMapping(value = "/csCenterSearch", method = RequestMethod.GET)
	    public String csCenterSearchList(String writer, Model model) throws IOException{
	    	System.out.println(writer);
	    	List<CsCenterVO> list = service.csCenterWriterList(writer);
	    	model.addAttribute( "list", list );
	    	return "/csCenter/csCenterList";
	    }
	    // 순번, 작성자, 날짜로 검색 
	   
	    @RequestMapping(value = "/csCenterAllSearch", method = RequestMethod.GET)
	    public String csCenterAllSearchList(String idx, String writer, String writedate, Model model) throws IOException{
	    	
	    	Map<String, Object> map = new HashMap<String,Object>();
			
			  if(idx.equals("")) { 
				  
			  }else { 
				int idxx=Integer.parseInt(idx);
				map.put("idx",idxx); 
			  
			  }
			  System.out.println("writedate"+writedate);
			  
			  
			  if(writedate.equals("")) { 
				  
			  }else { 
				  System.out.println("ok");
				  SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyymmdd");
			        
			        // Date로 변경하기 위해서는 날짜 형식을 yyyy-mm-dd로 변경해야 한다.
			        SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-mm-dd");
			        
			        java.util.Date tempDate = null;
			        
			        try {
			            // 현재 yyyymmdd로된 날짜 형식으로 java.util.Date객체를 만든다.
			            tempDate = beforeFormat.parse(writedate);
			        } catch (ParseException e) {
			            e.printStackTrace();
			        }
			        
			        // java.util.Date를 yyyy-mm-dd 형식으로 변경하여 String로 반환한다.
			        String transDate = afterFormat.format(tempDate);
			        
			        // 반환된 String 값을 Date로 변경한다.
			        Date d = Date.valueOf(transDate);
			        map.put("writedate", d);
			  }
	    	//map.put("idx", idx);
	    	map.put("writer", writer);
	    	List<CsCenterVO> list = service.csCenterAllSearchList(map);
	    	
	    	model.addAttribute( "list", list );
	    	return "/csCenter/csCenterList";
	    }
}
