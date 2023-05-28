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
	public String getUserNick(String user_nick) {
		
		return dao.getUserNick(user_nick);
	}

	@Override
	public int insertUser(UserVO vo) {
		return dao.insertUser(vo);
	}
	
}
