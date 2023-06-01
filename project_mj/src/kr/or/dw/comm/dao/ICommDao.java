package kr.or.dw.comm.dao;

import java.util.List;
import java.util.Map;

import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.comm.vo.LikeVO;
import kr.or.dw.comm.vo.ReplyVO;

public interface ICommDao {

	List<CommVO> selectCommList(Map<String, Object> paramMap);

	CommVO selectCommView(int bd_no);

	int selectCommCount();

	List<ReplyVO> selectReplyList(int bd_no);

	int selectUserLike(LikeVO likeVo);
	
}
