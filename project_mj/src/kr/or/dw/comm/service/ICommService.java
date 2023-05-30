package kr.or.dw.comm.service;

import java.util.List;
import java.util.Map;

import kr.or.dw.comm.vo.CommVO;

public interface ICommService {
	List<CommVO> selectCommList(Map<String, Object> paramMap);

	CommVO selectCommView(int bd_no);
}
