package kong.my.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kong.my.domain.HotPlaceVO;
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

}
