package kr.or.dw.comm.service;

import kr.or.dw.comm.dao.CommDaoImpl;
import kr.or.dw.comm.dao.ICommDao;

public class CommServiceImpl implements ICommService{
	private ICommDao dao;
	private static CommServiceImpl service;
	
	private CommServiceImpl() {
		dao = CommDaoImpl.getInstance();
	}
	
	public static CommServiceImpl getInstance() {
		if (service == null) service = new CommServiceImpl();
		return service;
	}
}
