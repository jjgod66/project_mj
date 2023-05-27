package kr.or.dw.admin.service;

import java.util.List;

import kr.or.dw.user.vo.UserVO;

public interface IAdminService {

	/**
	 * 관리자-회원관리-회원목록을 가져온다.
	 * @return 회원VO리스트
	 */
	List<UserVO> selectUserList();

}
