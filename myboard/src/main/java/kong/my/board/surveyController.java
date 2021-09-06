package kong.my.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kong.my.domain.CsCenterVO;
import kong.my.domain.SurveyVO;
import kong.my.service.surveyService;

@Controller
@RequestMapping("/survey/*")
public class surveyController {
	
	@Inject
	private surveyService service;
	
	// 설문조사 리스트
	@RequestMapping(value="/surveyList", method=RequestMethod.GET) //url mapping
	 public String SurveyList(Model model) throws Exception{
		List<SurveyVO> list = service.surveyList();
		model.addAttribute("list",list);
		 return "/survey/surveyList";
		 
	 }
	// 설문조사 참여
	@RequestMapping(value="/surveyForm", method=RequestMethod.GET) //url mapping
	 public String surveyPageMove(Model model) throws Exception{
		
		 return "/survey/surveyForm";
		 
	 }
	@RequestMapping(value="/surveyForm", method=RequestMethod.POST) //url mapping
	// 설문조사 등록
	 public String addSurvey(Model model, SurveyVO vo) throws Exception{
		service.addSurvey(vo);
		 return "redirect:surveyList";
	 }
	
	// 설문조사 수정 페이지로 이동
    @RequestMapping(value = "/surveyUpdate", method = RequestMethod.GET)
    public String getupdate(int s_idx, Model model) throws Exception {
    	SurveyVO data = service.surveyDetail(s_idx); //idx값 넘김
    	model.addAttribute("data",data);
       return "/survey/surveyUpdate";
    } 
    // 설문조사 수정 
    @RequestMapping(value="/surveyUpdate", method=RequestMethod.POST)
    public String surveyupdate(SurveyVO vo) throws Exception {
        service.surveyUpdate(vo);
        return "redirect:surveyList"; // 리스트로 리다이렉트
    }
    
    // 설문조사 삭제 
    @RequestMapping(value = "/surveyDelete", method = RequestMethod.GET)
    public String surveydelete(int s_idx) throws Exception {
    	service.surveyDelete(s_idx);
       return "redirect:surveyList";
    }
}
