package kr.or.dw.cs.dao;

import kr.or.dw.cs.vo.AnnouncementVO;

public interface ICsDao {

	int updateContent(AnnouncementVO anVo);

	int insertContent(AnnouncementVO anVo);

}
