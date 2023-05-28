package kr.or.dw.admin.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.dw.admin.service.AdminServiceImpl;
import kr.or.dw.admin.service.IAdminService;
import kr.or.dw.comm.vo.CommVO;
import kr.or.dw.util.PaginationUtil;
import kr.or.dw.web.IAction;

public class UserCommListViewAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int user_no = 0;
		user_no = Integer.parseInt(req.getParameter("user_no"));
		
		IAdminService service = AdminServiceImpl.getInstance();
		
		// 페이징처리
		Map<String, Integer> pagingConfigMap = null;
		PaginationUtil pagination = new PaginationUtil();
		String pageParam = req.getParameter("page");	// 사용자가 선택한 페이지 번호
		int page = (pageParam == null ? 1 : Integer.parseInt(pageParam));
		int totalCount = service.selectUserCount();
		pagination.setConfig(page, 10, 10, totalCount);
		pagingConfigMap = pagination.getConfig();
		
		// ibatis에서 받을 parameterMap 을 만든다.
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("start", pagingConfigMap.get("start"));
		paramMap.put("end", pagingConfigMap.get("end"));
		paramMap.put("user_no", user_no);
		
		List<CommVO> userCommList = (List<CommVO>)service.selectUserCommList(paramMap);
		req.setAttribute("user_no", user_no);
		req.setAttribute("userCommList", userCommList);
		req.setAttribute("pagingConfigMap", pagination);
		
		return "/admin/userCommListView.jsp";
	}

}
