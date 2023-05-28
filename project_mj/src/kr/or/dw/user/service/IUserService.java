package kr.or.dw.user.service;

import kr.or.dw.user.vo.UserVO;

public interface IUserService {

	public String getUserNick(String user_nick);   // 닉네임 조회하는 메서드 

	public int insertUser(UserVO vo); 			  // 회원 정보를 등록하는 메서드
}
