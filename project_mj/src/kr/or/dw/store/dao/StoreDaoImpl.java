package kr.or.dw.store.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

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
}
