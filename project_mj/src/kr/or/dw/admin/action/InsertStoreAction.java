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
		StoreVO storeVO = new StoreVO();
		
		BeanUtils bean = new BeanUtils();
		
		try {
			bean.populate(storeVO, req.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
//		service.insertStore();
		
		return "/admin/storeList.jsp";
	}

}
