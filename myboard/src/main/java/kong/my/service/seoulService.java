package kong.my.service;

import java.util.List;

import kong.my.domain.SeoulVO;

public interface seoulService {
	
	// 서울시 전국구 목록 조회
		public List<SeoulVO> seoulList(); 

	// 서울 구 등록
	public void addZone(SeoulVO vo);
	
	// 서울 구 수정
	public void updateZone(SeoulVO vo);
	

	//상세보기
	public SeoulVO seoulDetail(String s_code);
	
	//삭제하기
	public void seoulDelete(String s_code);

	//지역명으로 검색하기
	public List<SeoulVO> seoulSearchList(String s_name);
}
