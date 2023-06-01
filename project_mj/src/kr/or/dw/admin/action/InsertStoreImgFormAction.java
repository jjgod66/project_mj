package kr.or.dw.admin.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.admin.service.AdminServiceImpl;
import kr.or.dw.admin.service.IAdminService;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.web.IAction;

public class InsertStoreImgFormAction implements IAction{

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		IAdminService service = AdminServiceImpl.getInstance();
		int store_no = 0;
		
		if (req.getParameter("store_no") != null) {
			store_no = Integer.parseInt(req.getParameter("store_no"));
			StoreVO storeVo = service.selectStoreView(store_no);
			
			
			
			req.setAttribute("storeVo", storeVo);
			System.out.println(storeVo.getStore_name());
		}
			
		return "/admin/insertStoreImgForm.jsp";
	}

}
