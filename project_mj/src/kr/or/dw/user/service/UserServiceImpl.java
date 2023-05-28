package kr.or.dw.user.service;

import kr.or.dw.user.dao.UserDaoImpl;

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
	
}
