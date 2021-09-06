package kong.my.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kong.my.domain.SurveyVO;
@Repository
public class surveyDAOImpl implements surveyDAO {
	
	 @Inject
	 private SqlSession sql;
	
	 private static String namespace = "kong.board.mappers.survey";
	 
	// 설문조사 전체 리스트 조회
	@Override
	public List<SurveyVO> surveyList() {
		return sql.selectList(namespace+".surveyList");
	}
	// 설문조사 등록
	@Override
	public void addSurvey(SurveyVO vo) {
		sql.insert(namespace+".addSurvey",vo);
	}
	// 설문조사 상세보기
	@Override
	public SurveyVO surveyDetail(int s_idx) {
		return sql.selectOne(namespace+".surveyDetail",s_idx);
	}
	
	// 설문조사 글 수정하기
	@Override
	public void surveyUpdate(SurveyVO vo) {
		sql.update(namespace+".surveyUpDate",vo);
		
	}
	// 설문조사 글 삭제하기
	@Override
	public void surveyDelete(int s_idx) {
		sql.delete(namespace+".surveyDelete",s_idx);
	}
}
