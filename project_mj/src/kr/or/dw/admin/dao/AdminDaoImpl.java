package kr.or.dw.admin.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.user.vo.UserVO;
import kr.or.dw.util.BuildSqlMapClient;

public class AdminDaoImpl implements IAdminDao {
	private static AdminDaoImpl dao;
	private SqlMapClient client;
	
	private AdminDaoImpl() {
		client = BuildSqlMapClient.getSqlMapClient();
	}
	
	public static AdminDaoImpl getInstance() {
		if (dao == null) dao = new AdminDaoImpl();
		return dao;
	}

	@Override
	public List<UserVO> selectUserList() {
		List<UserVO> userList = null;
		try {
			userList = client.queryForList("user.selectUserList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
}
