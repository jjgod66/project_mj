package kr.or.dw.admin.action;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.dw.admin.service.AdminServiceImpl;
import kr.or.dw.admin.service.IAdminService;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.web.IAction;

public class InsertStoreAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		IAdminService service = AdminServiceImpl.getInstance();
		StoreVO storeVo = new StoreVO();
		
		BeanUtils bean = new BeanUtils();
		
		try {
			bean.populate(storeVo, req.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		int store_no = 0;
		String[] cat_name = null;
		//수정일때
		if (req.getParameter("store_no") != null) {
			store_no = Integer.parseInt(req.getParameter("store_no"));
			cat_name = req.getParameterValues("cat_name");
			System.out.println(cat_name);
			System.out.println("수정 : " + storeVo.getCat_name());
			int result = service.updateStore(storeVo);
			req.setAttribute("type", "update");
		} else {
			store_no = service.insertStore(storeVo);
			req.setAttribute("type", "insert");
		}
		
		req.setAttribute("store_no", store_no);
		return "/admin/insertStoreSuccess.jsp";
	}

}
