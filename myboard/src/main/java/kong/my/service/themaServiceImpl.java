package kong.my.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kong.my.dao.themaDAO;
import kong.my.domain.ThemaVO;
@Service	
public class themaServiceImpl implements themaService {
	
	@Inject
	 private themaDAO dao;

	
	// 테마 목록 조회
	@Override
	public List<ThemaVO> themaList() {
		return dao.themaList();
	}
	// 테마 등록
	@Override
	public void addThema(ThemaVO vo) {
		dao.addThema(vo);
		
	}
	//상세 정보
	@Override
	public ThemaVO themaDetail(String t_code) {
		return dao.themaDetail(t_code);
	}
	//수정
	@Override
	public void updateThema(ThemaVO vo) {
		dao.updateThema(vo);
		
	}
	//삭제
	@Override
	public void themaDelete(String t_code) {
		dao.themaDelete(t_code);
	}
	//테마명으로 검색하기
	@Override
	public List<ThemaVO> themaSearchList(String t_name) {
		return dao.themaSearchList(t_name);
	}
}
