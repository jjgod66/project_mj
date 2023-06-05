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
		return true;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		

		ICsService service = CsServiceImpl.getInstance();
		
		String bdtitle = req.getParameter("bdtitle");
		String bdcontent = req.getParameter("bdcontent");
		
		AnnouncementVO anVO = new AnnouncementVO();
		
		anVO.setBd_content(bdcontent);
		anVO.setBd_title(bdtitle);
		
		int bd_no = 0;
		
		if(req.getParameter("bd_no") != null) {
			bd_no = Integer.parseInt(req.getParameter("bd_no"));
			anVO.setBd_no(bd_no);
			/* int result = service. updateContent(anVO); */
			
		}else {
			System.out.println("test1");
			bd_no = service.insertContent(anVO);
			System.out.println("test2");
		}
		

		
		return "/cs/announceForm.do?bd_no="+bd_no ;
	}


}
