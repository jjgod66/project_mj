package kr.or.dw.cs.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.cs.service.CsServiceImpl;
import kr.or.dw.cs.service.ICsService;import kr.or.dw.store.vo.ImgStoreVO;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.web.IAction;

public class MainAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		ICsService service = CsServiceImpl.getInstance();
		List<StoreVO> mainStoreVoList = service.selectMainStoreVoList();
		System.out.println("mainStoreVoList : " + mainStoreVoList);
		req.setAttribute("mainStoreVoList", mainStoreVoList);
		return "/main.jsp";
	}

}
