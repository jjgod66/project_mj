package kr.or.dw.user.dao;

import kr.or.dw.user.vo.UserVO;

public interface IUserDao {

	String getUser_Nick(String user_nick);

	int insertUser(UserVO vo);

	UserVO loginUser(String user_email);
	
}
