package kr.or.dw.admin.dao;

import java.util.List;
import java.util.Map;

import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.user.vo.UserVO;

public interface IAdminDao {

	/**
	 * 관리자-회원관리-회원목록을 가져온다.
	 * @return 회원VO리스트
	 */
	List<UserVO> selectUserList(Map<String, Object> paramMap);
	
	/**
	 * 회원관리-회원을 삭제한다.
	 * @param user_no
	 * @return 결과 1
	 */
	int deleteUser(int user_no);

	int selectUserCount();

	/**
	 * 회원관리-해당회원이 작성한 커뮤니티 게시글 목록을 리스트로 받는다.
	 * @param paramMap 
	 * @return List<CommVO>
	 */
	List<CommVO> selectUserCommList(Map<String, Object> paramMap);

}
