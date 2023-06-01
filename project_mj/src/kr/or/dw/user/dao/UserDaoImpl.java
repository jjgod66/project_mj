package kr.or.dw.user.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.user.vo.UserVO;
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

	@Override
	public String getUser_nick(String user_nick) {

		String nick = null;
		try {
			nick = (String)client.queryForObject("user.getUser_nick", user_nick);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nick;
	}
	@Override
	public int insertUser(UserVO vo) {
		int result=0;
		
		try {
			result = (int)client.insert("user.insertUser", vo);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return result;
	}
	@Override
	public UserVO loginUser(String user_email) {
		
		UserVO vo = null;
		try {
			vo = (UserVO)client.queryForObject("user.loginUser", user_email);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return vo;
	}
	@Override
	public void updateUserPicPath(UserVO vo) {
		try {
			client.update("user.updateUserPicPath", vo);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
	}
	@Override
	public int updateUser(UserVO userVO) {
		 int result = 0;
			try {
				client.update("user.updateUser", userVO);
			} catch (SQLException e) {

				e.printStackTrace();
			}
		return result;
	}
	@Override
	public int deleteUser(int user_no) {
		int result = 0;
			try {
				client.update("user.deleteUser", user_no);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return result;
	}

}
