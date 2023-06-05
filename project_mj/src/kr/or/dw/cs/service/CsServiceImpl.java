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


	public int updateContent(AnnouncementVO anVo) {

		return dao.updateContent(anVo);
	}

	public int insertContent(AnnouncementVO anVo) {
		
		return dao.insertContent(anVo);

	}

	@Override
	public AnnouncementVO selectAnView(int bd_no) {
		
		return dao.selectAnView(bd_no);
	}

	@Override
	public void deleteAn(int bd_no) {
		
		 dao.deleteAn(bd_no);
	}


}
