package kr.or.dw.store.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.admin.service.AdminServiceImpl;
import kr.or.dw.admin.service.IAdminService;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.user.service.IUserService;
import kr.or.dw.user.service.UserServiceImpl;
import kr.or.dw.util.PaginationUtil;
import kr.or.dw.web.IAction;

public class StoreMainAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		IAdminService service = AdminServiceImpl.getInstance();
		
		// 페이징처리
		Map<String, Integer> pagingConfigMap = null;
		PaginationUtil pagination = new PaginationUtil();
		String pageParam = req.getParameter("page");	// 사용자가 선택한 페이지 번호
		int page = (pageParam == null ? 1 : Integer.parseInt(pageParam));
		int totalCount = service.selectStoreCount();
		pagination.setConfig(page, 9, 10, totalCount);
		pagingConfigMap = pagination.getConfig();
		
		// ibatis에서 받을 parameterMap 을 만든다.
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("start", pagingConfigMap.get("start"));
		paramMap.put("end", pagingConfigMap.get("end"));
		 
		List<StoreVO> storeVoList = service.selectStoreList(paramMap);
		List<String> tagList = service.selectTagList();
		List<String> catList = service.selectStoreCatList();
		
		req.setAttribute("pagingConfigMap", pagination);
		req.setAttribute("storeVoList", storeVoList);
		req.setAttribute("tagList", tagList);
		req.setAttribute("catList", catList);
		return "/store/storeMain.jsp";
	}

}
