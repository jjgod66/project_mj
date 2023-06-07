package kr.or.dw.user.dao;

import java.util.List;

import kr.or.dw.cs.vo.AnnouncementVO;
import kr.or.dw.user.vo.UserVO;

public interface IUserDao {

	public int insertUser(UserVO vo);

	public UserVO loginUser(String user_email);

	public String getUser_nick(String user_nick);

	int updateUser(UserVO userVO);

	int deleteUser(int user_no);

	void updateUserPicPath(UserVO vo);

	public List<AnnouncementVO> selectAnVoList();

}
