package kr.or.dw.cs.service;

import kr.or.dw.cs.vo.AnnouncementVO;

public interface ICsService {


	int updateContent(AnnouncementVO anVO);

	int insertContent(AnnouncementVO anVO);

	static ICsService getInstance() {
	

		return null;
	}

	static AnnouncementVO selectAnList(int bd_no) {

		
		return null;
	}

	AnnouncementVO selectAnView(int bd_no);


	void deleteAn(int parseInt);
	


}
