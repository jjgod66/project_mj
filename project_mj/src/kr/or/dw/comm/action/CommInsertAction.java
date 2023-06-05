package kr.or.dw.comm.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.comm.service.CommServiceImpl;
import kr.or.dw.comm.service.ICommService;
import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.web.IAction;

public class CommInsertAction implements IAction{

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
<<<<<<< Updated upstream
		// TODO Auto-generated method stub
		if(req.getParameter("bd_no") != null ) {
			int bd_no = Integer.parseInt(req.getParameter("bd_no"));
			ICommService service = CommServiceImpl.getInstance();
=======
		System.out.println("게시글 등록을 누릅니다.");
		HttpSession session = req.getSession();
		UserVO UserVO = (UserVO) session.getAttribute("UserVO");
		ICommService service = CommServiceImpl.getInstance();
		
		if( req.getParameter("bd_no") != null ) {
			int bd_no = Integer.parseInt(req.getParameter("bd_no"));
>>>>>>> Stashed changes
			CommVO commVo = service.selectCommView(bd_no);
			req.setAttribute("commVo", commVo);
		}
		
		List<String> catCommList = service.selectCatComm();
		req.setAttribute("catCommList", catCommList);
		
		
		return "/comm/commInsert.jsp";
	}

}
