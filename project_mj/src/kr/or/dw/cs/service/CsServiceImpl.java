package kr.or.dw.cs.service;

import kr.or.dw.cs.dao.CsDaoImpl;
import kr.or.dw.cs.dao.ICsDao;

public class CsServiceImpl {
	private ICsDao dao;
	private static CsServiceImpl service;
	
	private CsServiceImpl() {
		dao = CsDaoImpl.getInstance();
	}
	
	public static CsServiceImpl getInstance() {
		if (service == null) service = new CsServiceImpl();
		return service;
	}
}
