package kong.my.dao;

import java.util.List;
import java.util.Map;

import kong.my.domain.CsCenterVO;
import kong.my.domain.SeoulVO;


public interface seoulDAO {
	
	// 서울시 전국구 목록 조회
	public List<SeoulVO> seoulList(); 
	
	// 서울 구 등록
	public void addZone(SeoulVO vo);
	
	//상세보기
	public SeoulVO seoulDetail(String s_code);
	
	// 서울 구 수정
	public void updateZone(SeoulVO vo);
	
	//삭제하기
	public void seoulDelete(String s_code);
}

