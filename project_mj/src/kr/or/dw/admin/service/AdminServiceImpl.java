package kr.or.dw.admin.service;

import java.util.List;
import java.util.Map;

import kr.or.dw.admin.dao.AdminDaoImpl;
import kr.or.dw.admin.dao.IAdminDao;
import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.store.vo.StoreVO;
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
	public List<UserVO> selectUserList(Map<String, Object> paramMap) {
		return dao.selectUserList(paramMap);
	}

	@Override
	public int deleteUser(int user_no) {
		return dao.deleteUser(user_no);
	}

	@Override
	public int selectUserCount() {
		return dao.selectUserCount();
	}

	@Override
	public List<CommVO> selectUserCommList(int user_no) {
		return dao.selectUserCommList(user_no);
	}

	@Override
	public List<String> selectStoreCatList() {
		return dao.selectStoreCatList();
	}

	@Override
	public int insertStore(StoreVO storeVo) {
		return dao.insertStore(storeVo);
	}

	@Override
	public List<StoreVO> selectStoreList(Map<String, Object> paramMap) {
		return dao.selectStoreList(paramMap);
	}

	@Override
	public int selectStoreCount() {
		return dao.selectStoreCount();
	}
}
