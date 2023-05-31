package kr.or.dw.comm.service;

import java.util.List;
import java.util.Map;

import kr.or.dw.comm.dao.CommDaoImpl;
import kr.or.dw.comm.dao.ICommDao;
import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.comm.vo.ReplyVO;

public class CommServiceImpl implements ICommService{
	private ICommDao dao;
	private static CommServiceImpl service;
	
	private CommServiceImpl() {
		dao = CommDaoImpl.getInstance();
	}
	
	public static CommServiceImpl getInstance() {
		if (service == null) service = new CommServiceImpl();
		return service;
	}

	@Override
	public List<CommVO> selectCommList(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return dao.selectCommList(paramMap);
	}

	@Override
	public CommVO selectCommView(int bd_no) {
		// TODO Auto-generated method stub
		return dao.selectCommView(bd_no);
	}

	@Override
	public int selectCommCount() {
		// TODO Auto-generated method stub
		return dao.selectCommCount();
	}

	@Override
	public List<ReplyVO> selectReplyList(int bd_no) {
		// TODO Auto-generated method stub
		return dao.selectReplyList(bd_no);
	}
}
