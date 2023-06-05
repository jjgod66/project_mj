package kr.or.dw.cs.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.dw.cs.service.CsServiceImpl;
import kr.or.dw.cs.service.ICsService;
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
		
		UserVO userVO = (UserVO) session.getAttribute("UserVO");
		String bdtitle = req.getParameter("bdtitle");
		String bdcontent = req.getParameter("bdcontent");
		
		AnnouncementVO announcementVO = new AnnouncementVO();
		
		announcementVO.setBd_content(bdcontent);
		announcementVO.setBd_title(bdtitle);
		
		ICsService service = CsServiceImpl.getInstance();
		int bd_no = 0;
		
		if(req.getParameter("bd_no") != null) {
			bd_no = Integer.parseInt(req.getParameter("bd_no"));
			int result = service. updateContent(announcementVO);
			
		}else {
			bd_no = service.insertContent(announcementVO);
		}
		

		
		return "/cs/insertSuccess.jsp";
	}


}
