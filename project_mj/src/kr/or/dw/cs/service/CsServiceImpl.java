package kr.or.dw.cs.service;

import kr.or.dw.cs.dao.CsDaoImpl;
import kr.or.dw.cs.dao.ICsDao;
import kr.or.dw.cs.vo.AnnouncementVO;

public class CsServiceImpl implements ICsService{
	private ICsDao dao;
	private static CsServiceImpl service;
	
	private CsServiceImpl() {
		dao = CsDaoImpl.getInstance();
	}
	
	public static CsServiceImpl getInstance() {
		if (service == null) service = new CsServiceImpl();
		return service;
	}

	@Override
	public int updateContent(AnnouncementVO announcementVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertContent(AnnouncementVO announcementVO) {
		// TODO Auto-generated method stub
		return 0;
	}
}
