package kr.or.dw.cs.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.util.BuildSqlMapClient;

public class CsDaoImpl implements ICsDao {
	private static CsDaoImpl dao;
	private SqlMapClient client;
	
	private CsDaoImpl() {
		client = BuildSqlMapClient.getSqlMapClient();
	}
	
	public static CsDaoImpl getInstance() {
		if (dao == null) dao = new CsDaoImpl();
		return dao;
	}

	@Override
	public List<StoreVO> selectMainStoreVoList(Map<String, Integer> randomMap) {
		List<StoreVO> mainStoreVoList = null;
		
		try {
			mainStoreVoList = client.queryForList("store.mainStoreVoList", randomMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return mainStoreVoList;
	}

	@Override
	public int selectStoreTotalCount() {
		int count = 0;
		
		try {
			count = (int) client.queryForObject("store.selectStoreTotalCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
}
