package kong.my.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kong.my.dao.hotPlaceDAO;
import kong.my.domain.HotPlaceVO;
@Service	
public class hotPlaceServiceImpl implements hotPlaceService {
	@Inject
	 private hotPlaceDAO dao;
	// 핫플레이스 목록 조회
	@Override
	public List<HotPlaceVO> hotPlaceList() {
		return dao.hotPlaceList();
	}
	//핫플레이스 지역, 테마 검색
	@Override
	public List<HotPlaceVO> hotPlaceSearchList(Map<String, String> map) {
		return dao.hotPlaceSearchList(map);
	}

}
