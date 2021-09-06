package kong.my.dao;

import java.util.List;

import kong.my.domain.CsCenterVO;
import kong.my.domain.HotPlaceVO;
import kong.my.domain.SurveyVO;

public interface surveyDAO {
	
	// 설문조사 전체 리스트 조회
	public List<SurveyVO> surveyList();
	
	// 설문조사 등록
	public void addSurvey(SurveyVO vo);
	
	//핫플레이스 상세보기
	public SurveyVO surveyDetail(int s_idx);
		
	// 설문조사 글 수정하기
	public void surveyUpdate(SurveyVO vo);
	
	// 설문조사 글 삭제하기
	public void surveyDelete(int s_idx);
}
