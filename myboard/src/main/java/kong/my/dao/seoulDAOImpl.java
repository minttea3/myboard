package kong.my.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kong.my.domain.CsCenterVO;
import kong.my.domain.SeoulVO;
@Repository
public class seoulDAOImpl implements seoulDAO {
	
	@Inject
	 private SqlSession sql;
	
	 private static String namespace = "kong.board.mappers.seoul";
	
	// 서울시 전국구 목록 조회
	@Override
	public List<SeoulVO> seoulList() {
		return sql.selectList(namespace + ".seoulList");
	}
	
	// 서울 구 등록
	@Override
	public void addZone(SeoulVO vo) {
		sql.insert(namespace+".addZone",vo);
		
	}
	// 서울 구 수정
	@Override
	public void updateZone(SeoulVO vo) {
		sql.update(namespace+".updateZone",vo);
		
	}
	// 상세보기
	@Override
	public SeoulVO seoulDetail(String s_code) {
		return sql.selectOne(namespace+".seoulDetail",s_code);
	}
	
	// 삭제
	@Override
	public void seoulDelete(String s_code) {
		
		sql.delete(namespace+".seoulDelete",s_code);
	}
	//지역명으로 검색하기
	@Override
	public List<SeoulVO> seoulSearchList(String s_name) {
		return sql.selectList(namespace+".seoulSearchList",s_name);
	}
}
