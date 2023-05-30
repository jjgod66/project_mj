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
		// TODO Auto-generated method stub
		if(req.getParameter("bd_no") != null ) {
			int bd_no = Integer.parseInt(req.getParameter("bd_no"));
			ICommService service = CommServiceImpl.getInstance();
			CommVO commVo = service.selectCommView(bd_no);
			req.setAttribute("commVo", commVo);
		}
		
		
		
		return "/comm/commInsert.jsp";
	}

}
