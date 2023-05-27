package kr.or.dw.admin.dao;

import java.util.List;

import kr.or.dw.user.vo.UserVO;

public interface IAdminDao {

	/**
	 * 관리자-회원관리-회원목록을 가져온다.
	 * @return 회원VO리스트
	 */
	List<UserVO> selectUserList();

}
