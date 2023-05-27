package kr.or.dw.comm.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.util.BuildSqlMapClient;

public class CommDaoImpl implements ICommDao {
	private static CommDaoImpl dao;
	private SqlMapClient client;
	
	private CommDaoImpl() {
		client = BuildSqlMapClient.getSqlMapClient();
	}
	
	public static CommDaoImpl getInstance() {
		if (dao == null) dao = new CommDaoImpl();
		return dao;
	}
}
