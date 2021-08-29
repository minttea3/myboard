package kong.my.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kong.my.dao.hotPlaceDAO;
import kong.my.domain.HotPlaceVO;
import kong.my.domain.SeoulVO;
@Service	
public class hotPlaceServiceImpl implements hotPlaceService {
	@Inject
	 private hotPlaceDAO dao;
	// 핫플레이스 목록 조회
	@Override
	public List<HotPlaceVO> hotPlaceList() {
		return dao.hotPlaceList();
	}
	// 핫플레이스 지역, 테마 검색
	@Override
	public List<HotPlaceVO> hotPlaceSearchList(Map<String, String> map) {
		return dao.hotPlaceSearchList(map);
	}
	// 핫플레이스 등록
	@Override
	public void addHotPlace(HotPlaceVO vo) {
		dao.addHotPlace(vo);
		
	}
	//테마 상세
	@Override
	public HotPlaceVO HotPlaceDetail(int h_code) {
		return dao.HotPlaceDetail(h_code);
	}
	
	//테마 수정
	@Override
	public void updateHotPlace(HotPlaceVO vo) {
		dao.updateHotPlace(vo);
	}
	//테마 삭제
	@Override
	public void HotPlaceDelete(int h_code) {
		dao.HotPlaceDelete(h_code);
	}
	// 여러 조건으로 검색하기 (순번, 작성자, 날짜)
	@Override
	public List<HotPlaceVO> adminHotPlaceSearch(Map<String, Object> map) {
		return dao.adminHotPlaceSearch(map);
	}
}
