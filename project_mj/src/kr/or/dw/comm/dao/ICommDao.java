package kr.or.dw.comm.dao;

import java.util.List;
import java.util.Map;

import kr.or.dw.comm.vo.CommVO;

public interface ICommDao {

	List<CommVO> selectCommList(Map<String, Object> paramMap);
	
}
