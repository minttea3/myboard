package kong.my.dao;

import java.util.List;

import kong.my.domain.ThemaVO;


public interface themaDAO {
	
	// 테마 목록 조회
	public List<ThemaVO> themaList(); 
	// 테마  등록
	public void addThema(ThemaVO vo);
	
	// 테마 수정
	public void updateThema(ThemaVO vo);
	
	// 테마 상세보기
	public ThemaVO themaDetail(String t_code);
	
	// 테마 삭제하기
	public void themaDelete(String t_code);
}
