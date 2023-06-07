package kr.or.dw.store.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.util.BuildSqlMapClient;

public class StoreDaoImpl implements IStoreDao {
	private static StoreDaoImpl dao;
	private SqlMapClient client;
	
	private StoreDaoImpl() {
		client = BuildSqlMapClient.getSqlMapClient();
	}
	
	public static StoreDaoImpl getInstance() {
		if (dao == null) dao = new StoreDaoImpl();
		return dao;
	}

	@Override
	public StoreVO selectStoreVo(int store_no) {
		StoreVO storeVo = null;
		
		try {
			storeVo = (StoreVO) client.queryForObject("store.selectStoreVo", store_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return storeVo;
	}
}
