package kr.or.dw.cs.service;

import kr.or.dw.cs.vo.AnnouncementVO;

public interface ICsService {

	static ICsService getInstance() {
		// TODO Auto-generated method stub
		return null;
	}

	static AnnouncementVO selectAnList(int bd_no) {
		// TODO Auto-generated method stub
		return null;
	}

	int updateContent(AnnouncementVO announcementVO);

	int insertContent(AnnouncementVO announcementVO);

}
