package kr.or.dw.admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.comm.vo.CommVO;
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
	public List<UserVO> selectUserList(Map<String, Object> paramMap) {
		List<UserVO> userList = null;
		try {
			userList = client.queryForList("user.selectUserList", paramMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public int deleteUser(int user_no) {
		int result = 0;
		
		try {
			result = client.update("user.deleteUser", user_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public int selectUserCount() {
		int count = 0;
		
		try {
			count = (int) client.queryForObject("user.selectUserCount");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public List<CommVO> selectUserCommList(Map<String, Object> paramMap) {
		List<CommVO> selectUserCommList = null;
		
		try {
			selectUserCommList = client.queryForList("comm.selectUserCommList", paramMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return selectUserCommList;
	}
}
