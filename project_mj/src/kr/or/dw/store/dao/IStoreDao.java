package kr.or.dw.store.dao;

import kr.or.dw.store.vo.StoreVO;

public interface IStoreDao {

	/**
	 * 점포번호로 점포VO를 부른다
	 * @param store_no
	 * @return
	 */
	StoreVO selectStoreVo(int store_no);

}
