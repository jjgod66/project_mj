package kr.or.dw.user.dao;

import kr.or.dw.user.vo.UserVO;

public interface IUserDao {

	public int insertUser(UserVO vo);

	public UserVO loginUser(String user_email);

	public String getUser_nick(String user_nick);

	
}
