package kr.or.dw.comm.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.SessionTrackingMode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.dw.comm.service.CommServiceImpl;
import kr.or.dw.comm.service.ICommService;
import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.comm.vo.LikeVO;
import kr.or.dw.comm.vo.ReplyVO;
import kr.or.dw.user.vo.UserVO;
import kr.or.dw.web.IAction;

public class CommViewAction implements IAction{

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int bd_no = 0;
		bd_no = Integer.parseInt(req.getParameter("bd_no"));
		ICommService commService = CommServiceImpl.getInstance();
		CommVO commVo = null;
		commVo = commService.selectCommView(bd_no);
		
		List<ReplyVO> replyList = null;
		replyList = commService.selectReplyList(bd_no);
		
		HttpSession session = req.getSession();
		UserVO userVo = null;
		int user_no = 0;
		if(session.getAttribute("userVO") != null ) {
			user_no = ((UserVO)session.getAttribute("userVO")).getUser_no();
		};
		LikeVO
	}

}
