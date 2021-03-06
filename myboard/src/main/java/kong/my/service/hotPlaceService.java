package kong.my.service;

import java.util.List;
import java.util.Map;

import kong.my.domain.HotPlaceVO;
import kong.my.domain.SeoulVO;

public interface hotPlaceService {
	
	// 핫플레이스 목록 조회
	public List<HotPlaceVO> hotPlaceList(); 
	
	//핫플레이스 지역, 테마 검색
	public List<HotPlaceVO> hotPlaceSearchList(Map<String,String> map);
	//핫플레이스 등록
	public void addHotPlace(HotPlaceVO vo);
	//핫플레이스 상세보기
	public HotPlaceVO HotPlaceDetail(int h_code);
	//핫플레이스 수정
	public void updateHotPlace(HotPlaceVO vo);
	//핫플레이스 삭제하기
	public void HotPlaceDelete(int h_code);	
	// 여러 조건으로 검색하기 (순번, 작성자, 날짜)
	public List<HotPlaceVO> adminHotPlaceSearch(Map<String,Object> map);
}
