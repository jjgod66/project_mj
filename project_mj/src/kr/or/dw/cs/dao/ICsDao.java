package kr.or.dw.cs.dao;

import kr.or.dw.cs.vo.AnnouncementVO;

public interface ICsDao {

	int insertContent(AnnouncementVO anVo);

	AnnouncementVO selectAnView(int bd_no);

	void deleteAn(int bd_no);

	int updateAn(AnnouncementVO anVo);

}
