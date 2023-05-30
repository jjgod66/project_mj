package kr.or.dw.comm.dao;

import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.comm.vo.CommVO;
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

	@Override
	public List<CommVO> selectCommList(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return null;
	}
}
