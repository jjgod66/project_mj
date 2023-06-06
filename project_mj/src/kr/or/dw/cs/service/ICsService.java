package kr.or.dw.cs.service;

import java.util.List;

import kr.or.dw.cs.vo.AnnouncementVO;
import kr.or.dw.store.vo.StoreVO;

public interface ICsService {

	static ICsService getInstance() {
		// TODO Auto-generated method stub
		return null;
	}

	static AnnouncementVO selectAnList(int bd_no) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 메인화면 캐러셀에 들어갈 점포 3개를 불러온다.
	 * @return
	 */
	List<StoreVO> selectMainStoreVoList();

}
