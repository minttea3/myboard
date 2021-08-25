package kong.my.service;

import java.util.List;
import java.util.Map;

import kong.my.domain.HotPlaceVO;

public interface hotPlaceService {
	
	// 핫플레이스 목록 조회
	public List<HotPlaceVO> hotPlaceList(); 
	
	//핫플레이스 지역, 테마 검색
		public List<HotPlaceVO> hotPlaceSearchList(Map<String,String> map);

}
