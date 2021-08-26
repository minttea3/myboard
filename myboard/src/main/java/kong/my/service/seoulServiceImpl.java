package kong.my.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kong.my.dao.seoulDAO;
import kong.my.domain.SeoulVO;
@Service	
public class seoulServiceImpl implements seoulService {
	
	@Inject
	 private seoulDAO dao;
	
	// 서울시 전국구 목록 조회
	@Override
	public List<SeoulVO> seoulList() {
		return dao.seoulList();
	}

	// 서울 구 등록
	@Override
	public void addZone(SeoulVO vo) {
		dao.addZone(vo);
	}
	// 상세정보
	@Override
	public SeoulVO seoulDetail(String s_code) {
		
		return dao.seoulDetail(s_code);
	}
	// 서울 구 수정
	@Override
	public void updateZone(SeoulVO vo) {
		dao.updateZone(vo);
		
	}
	
	// 삭제
	@Override
	public void seoulDelete(String s_code) {
		dao.seoulDelete(s_code);
	
	}
}
