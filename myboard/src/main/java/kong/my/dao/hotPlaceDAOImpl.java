package kong.my.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kong.my.domain.HotPlaceVO;
import kong.my.domain.SeoulVO;
@Repository
public class hotPlaceDAOImpl implements hotPlaceDAO {
	@Inject
	 private SqlSession sql;
	
	 private static String namespace = "kong.board.mappers.hotplace";
	//핫플레이스 전체 조회
	@Override
	public List<HotPlaceVO> hotPlaceList() {
		return sql.selectList(namespace+".hotPlaceList");
	}
	//핫플레이스 지역, 테마 검색
	@Override
	public List<HotPlaceVO> hotPlaceSearchList(Map<String,String> map) {
		
		return sql.selectList(namespace+".hotPlaceSearchList", map);
	}
	//핫플레이스 등록
	@Override
	public void addHotPlace(HotPlaceVO vo) {
		sql.insert(namespace+".addHotplace",vo);
		
	}
	//핫플레이스 상세보기
	@Override
	public HotPlaceVO HotPlaceDetail(int h_code) {
		return sql.selectOne(namespace+".HotplaceDetail",h_code);
	}
	//핫플레이스 수정
	@Override
	public void updateHotPlace(HotPlaceVO vo) {
		sql.update(namespace+".updateHotplace",vo);
		
	}
	//핫플레이스 삭제하기
	@Override
	public void HotPlaceDelete(int h_code) {
		sql.delete(namespace+".hotplaceDelete",h_code);
	}
	// 여러 조건으로 검색하기 (순번, 작성자, 날짜)
	@Override
	public List<HotPlaceVO> adminHotPlaceSearch(Map<String, Object> map) {
		return sql.selectList(namespace+".adminHotPlaceSearch", map);
	}	
}
