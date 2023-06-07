package kr.or.dw.store.service;

import kr.or.dw.store.dao.IStoreDao;
import kr.or.dw.store.dao.StoreDaoImpl;
import kr.or.dw.store.vo.StoreVO;

public class StoreServiceImpl implements IStoreService {
	private IStoreDao dao;
	private static StoreServiceImpl service;
	
	private StoreServiceImpl() {
		dao = StoreDaoImpl.getInstance();
	}
	
	public static StoreServiceImpl getInstance() {
		if (service == null) service = new StoreServiceImpl();
		return service;
	}

	@Override
	public StoreVO selectStoreVo(int store_no) {
		return dao.selectStoreVo(store_no);
	}
}
