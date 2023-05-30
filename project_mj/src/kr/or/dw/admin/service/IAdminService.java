package kr.or.dw.admin.service;

import java.util.List;
import java.util.Map;

import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.user.vo.UserVO;

public interface IAdminService {

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
	
	/**
	 * 회원가입한 유저의 수를 센다.
	 * @return
	 */
	int selectUserCount();
	
	/**
	 * 회원관리-해당회원이 작성한 커뮤니티 게시글 목록을 리스트로 받는다.
	 * @param user_no
	 * @return List<CommVO>
	 */
	List<CommVO> selectUserCommList(int user_no);

	/**
	 * 점포 업종 리스트를 불러온다.
	 * @return
	 */
	List<String> selectStoreCatList();

	/**
	 * 새로운 점포를 등록한다.
	 * @param storeVo
	 * @return
	 */
	int insertStore(StoreVO storeVo);
	
	/**
	 * 등록된 점포의 리스트를 불러온다.
	 * @param paramMap
	 * @return List<StoreVO>
	 */
	List<StoreVO> selectStoreList(Map<String, Object> paramMap);
	
	/**
	 * 등록된 점포의 수를 센다.
	 * @return 등록점포 수
	 */
	int selectStoreCount();
	
	/**
	 * 점포번호로 해당 점포객체의 정보 불러온다.
	 * @param store_no
	 * @return StoreVO
	 */
	StoreVO selectStoreView(int store_no);
	
	/**
	 * 점포의 정보를 업데이트한다.
	 * @param store_no
	 * @return 결과값 1
	 */
	int updateStore(StoreVO storeVo);

}
