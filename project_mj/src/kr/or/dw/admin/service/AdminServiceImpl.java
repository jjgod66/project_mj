package kr.or.dw.admin.service;

import java.util.List;

import kr.or.dw.admin.dao.AdminDaoImpl;
import kr.or.dw.admin.dao.IAdminDao;
import kr.or.dw.user.vo.UserVO;

public class AdminServiceImpl implements IAdminService {
	private IAdminDao dao;
	private static AdminServiceImpl service;
	
	private AdminServiceImpl() {
		dao = AdminDaoImpl.getInstance();
	}
	
	public static AdminServiceImpl getInstance() {
		if (service == null) service = new AdminServiceImpl();
		return service;
	}

	@Override
	public List<UserVO> selectUserList() {
		return dao.selectUserList();
	}
}
