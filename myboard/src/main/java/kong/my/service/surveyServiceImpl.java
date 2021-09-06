package kong.my.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kong.my.dao.surveyDAO;
import kong.my.domain.SurveyVO;
@Service
public class surveyServiceImpl implements surveyService {
	
	@Inject
	 private surveyDAO dao;
	
	//설문조사 전체 리스트 조회
	@Override
	public List<SurveyVO> surveyList() {
		return dao.surveyList();
	}
	// 설문조사 등록
	@Override
	public void addSurvey(SurveyVO vo) {
		dao.addSurvey(vo);
	}
	//핫플레이스 상세보기
	@Override
	public SurveyVO surveyDetail(int s_idx) {
		return dao.surveyDetail(s_idx);
	}
	// 설문조사 글 수정하기
	@Override
	public void surveyUpdate(SurveyVO vo) {
		dao.surveyUpdate(vo);		
	}
	// 설문조사 글 삭제하기
	@Override
	public void surveyDelete(int s_idx) {
		dao.surveyDelete(s_idx);
	}

}
