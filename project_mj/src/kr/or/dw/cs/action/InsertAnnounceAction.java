package kr.or.dw.cs.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.dw.cs.vo.AnnouncementVO;
import kr.or.dw.user.vo.UserVO;
import kr.or.dw.web.IAction;

public class InsertAnnounceAction implements IAction{

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		AnnouncementVO  announcementVO = (AnnouncementVO)session.getAttribute("announcementVO");
		String bd_title = req.getParameter("bd_title");
		String bd_content = req.getParameter("bd_content");
		
		
		announcementVO.setBd_title(bd_title);
		announcementVO.setBd_content(bd_content);

		
		return "/cs/insertSuccess.jsp";
	}


}
