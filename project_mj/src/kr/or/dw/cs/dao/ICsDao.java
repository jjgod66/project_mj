package kr.or.dw.cs.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import kr.or.dw.store.vo.StoreVO;

public interface ICsDao {

	/**
	 * 랜덤으로 뽑은 점포 3개를 가지고 정보를 가지러 감
	 * @param randomSet
	 * @return
	 */
	List<StoreVO> selectMainStoreVoList(Map<String, Integer> randomMap);

	/**
	 * 등록이 된 총 점포 수 조회
	 * @return 점포 수 count
	 */
	int selectStoreTotalCount();

}
