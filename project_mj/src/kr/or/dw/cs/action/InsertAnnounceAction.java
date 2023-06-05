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

		ICsService service = CsServiceImpl.getInstance();
		String bd_title = req.getParameter("bd_title");
		String bd_content = req.getParameter("bd_content");
		
		AnnouncementVO anVo = new AnnouncementVO();
		
		anVo.setBd_content(bd_content);
		anVo.setBd_title(bd_title);
		
		int bd_no = 0;
		
		if(req.getParameter("bd_no") != null) {
			bd_no = Integer.parseInt(req.getParameter("bd_no"));
			int result = service. updateContent(anVo);
			
		}else {
			bd_no = service.insertContent(anVo);
		}
		

		
		return "/cs/announceForm.do?bd_no=" + bd_no;
	}


}
