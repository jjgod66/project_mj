package kr.or.dw.user.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.util.BuildSqlMapClient;

public class UserDaoImpl implements IUserDao {
	private static UserDaoImpl dao;
	private SqlMapClient client;
	
	public UserDaoImpl () {
		client = BuildSqlMapClient.getSqlMapClient();
	}

	public static UserDaoImpl getInstance() {
		if (dao == null ) dao = new UserDaoImpl();
		return dao;
	}

<<<<<<< Updated upstream

	public String getUser_Nick(String user_nick) {
=======
	@Override
	public String getUser_nick(String user_nick) {
>>>>>>> Stashed changes
		String nick = null;
		try {
			nick = (String)client.queryForObject("user.getUser_nick", user_nick);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nick;
	}

	public int insertUser(UserVO vo) {
		int result=0;
		
		try {
			result = (int)client.insert("user.insertUser", vo);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return result;
	}

	public UserVO loginUser(String user_email) {
		
		UserVO vo = null;
		try {
			vo = (UserVO)client.queryForObject("user.loginUser", user_email);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return vo;
	}
=======

}
