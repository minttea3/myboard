package kong.my.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kong.my.domain.ThemaVO;
@Repository
public class themaDAOImpl implements themaDAO {

	@Inject
	 private SqlSession sql;
	
	 private static String namespace = "kong.board.mappers.thema";
	
	//전체 테마 목록 조회
	@Override
	public List<ThemaVO> themaList() {
		return sql.selectList(namespace + ".themaList");
	}
	// 테마 등록
	@Override
	public void addThema(ThemaVO vo) {
		sql.insert(namespace+".addThema",vo);
		
	}
	// 테마 구 수정
	@Override
	public void updateThema(ThemaVO vo) {
		sql.update(namespace+".updateZone",vo);
		
	}
	// 테마 상세보기
	@Override
	public ThemaVO themaDetail(String t_code) {
		return sql.selectOne(namespace+".themaDetail",t_code);
	}
	// 테마 삭제하기
	@Override
	public void themaDelete(String t_code) {
		sql.delete(namespace+".seoulDelete",t_code);
	}
	//테마명으로 검색하기
	@Override
	public List<ThemaVO> themaSearchList(String t_name) {
		return  sql.selectList(namespace + ".themaSearchList",t_name);
	}
}
