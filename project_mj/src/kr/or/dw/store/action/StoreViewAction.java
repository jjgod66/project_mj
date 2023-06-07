package kr.or.dw.store.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.admin.service.AdminServiceImpl;
import kr.or.dw.admin.service.IAdminService;
import kr.or.dw.store.service.IStoreService;
import kr.or.dw.store.service.StoreServiceImpl;
import kr.or.dw.store.vo.ImgStoreVO;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.web.IAction;

public class StoreViewAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		IStoreService service = StoreServiceImpl.getInstance();
		IAdminService serviceAdmin = AdminServiceImpl.getInstance();
		
		// 조회수 늘리기
		
		
		// storeVo 정보 가져오기
		int store_no = Integer.parseInt(req.getParameter("store_no"));
		StoreVO storeVo = service.selectStoreVo(store_no);
		List<ImgStoreVO> imgStoreVoList = serviceAdmin.selectImgStoreList(store_no);
		req.setAttribute("storeVo", storeVo);
		req.setAttribute("imgStoreVoList", imgStoreVoList);
		return "/store/storeView.jsp";
	}

}
