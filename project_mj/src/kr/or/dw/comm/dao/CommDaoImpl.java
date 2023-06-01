package kr.or.dw.comm.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.comm.vo.ReplyVO;
import kr.or.dw.util.BuildSqlMapClient;

public class CommDaoImpl implements ICommDao {
	private static CommDaoImpl dao;
	private SqlMapClient client;
	
	private CommDaoImpl() {
		client = BuildSqlMapClient.getSqlMapClient();
	}
	
	public static CommDaoImpl getInstance() {
		if (dao == null) dao = new CommDaoImpl();
		return dao;
	}

	@Override
	public List<CommVO> selectCommList(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		List<CommVO> commList = null;
		try {
			commList = client.queryForList("comm.selectUserCommList", paramMap);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commList;
	}

	@Override
	public CommVO selectCommView(int bd_no) {
		// TODO Auto-generated method stub
		CommVO commVo = null;
		
		try {
			commVo = (CommVO) client.queryForObject("comm.selectCommView", bd_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commVo;
	}

	@Override
	public int selectCommCount() {
		// TODO Auto-generated method stub
		int count = 0;
		try {
			count = (int) client.queryForObject("comm.selectCommCount");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<ReplyVO> selectReplyList(int bd_no) {
		// TODO Auto-generated method stub
		List<ReplyVO> replyList = null;
		try {
			replyList = client.queryForList("comm.selectReplyList", bd_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return replyList;
	}
}
