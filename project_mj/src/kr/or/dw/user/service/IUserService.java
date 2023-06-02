package kr.or.dw.user.service;

import kr.or.dw.user.vo.UserVO;

public interface IUserService {


	public String getUser_nick(String user_nick);   // 닉네임 조회하는 메서드 

	public int insertUser(UserVO vo); 			  // 회원 정보를 등록하는 메서드

	public UserVO loginUser(String user_email);

	public void updateUserPicPath(UserVO userVO);

	public int deleteUser(int user_no);

	public int updateUser(UserVO userVO);

<<<<<<< Updated upstream
=======

	/**
	 * 공지사항 게시글 리스트를 불러온다
	 * @return
	 */
	public List<AnnouncementVO> selectAnVoList();


>>>>>>> Stashed changes
	

}
