package kr.or.dw.user.service;

import kr.or.dw.user.dao.UserDaoImpl;
import kr.or.dw.user.vo.UserVO;

public class UserServiceImpl implements IUserService {
	
	private UserDaoImpl dao;
	private static UserServiceImpl service;
	
	
	
	public UserServiceImpl() {
		dao = UserDaoImpl.getInstance();
	}

	public static UserServiceImpl getInstance() {
		if(service == null) service = new UserServiceImpl();
		return service;
	}


	@Override
	public int insertUser(UserVO vo) {
		return dao.insertUser(vo);
	}

	@Override
	public UserVO loginUser(String user_email) {
		return dao.loginUser(user_email);
	}

	@Override
	public String getUser_nick(String user_nick) {
		return dao.getUser_nick(user_nick);
	}

	@Override
	public void updateUserPicPath(UserVO vo) {
		dao.updateUserPicPath(vo);
		
	}

	@Override
	public int updateUser(UserVO userVO) {
	
		return dao.updateUser(userVO);
	}

	@Override
	public int deleteUser(int user_no) {
	
		return dao.deleteUser(user_no);
	}

	
}
