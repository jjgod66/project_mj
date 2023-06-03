package kr.or.dw.cs.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.cs.vo.AnnouncementVO;
import kr.or.dw.user.service.IUserService;
import kr.or.dw.user.service.UserServiceImpl;
import kr.or.dw.web.IAction;

public class AnnounceFormAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		IUserService service = UserServiceImpl.getInstance();
		List<AnnouncementVO> anVoList = service.selectAnVoList();
		System.out.println(anVoList);
		req.setAttribute("anVoList", anVoList);
		
		return "/cs/announceForm.jsp";
	}

}
