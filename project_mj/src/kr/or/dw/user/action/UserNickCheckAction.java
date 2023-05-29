package kr.or.dw.user.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.dw.user.service.IUserService;
import kr.or.dw.user.service.UserServiceImpl;
import kr.or.dw.web.IAction;

public class UserNickCheckAction implements IAction{

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("application/json;  charset=utf-8");
		String user_nick = req.getParameter("user_nick");		
		IUserService service = UserServiceImpl.getInstance();

		user_nick = service.getUser_nick(user_nick);
		
		Gson gson = new Gson();
		String result = null;
		
		if (user_nick == null) {	// 중복되지 않는 경우
			result = gson.toJson("사용가능한 닉네임입니다.");
		} else {			// 중복되는 경우
			result = gson.toJson("중복된 닉네임입니다. 다시 입력해주세요.");
		}
		PrintWriter out = res.getWriter();
		out.println(result);
		out.flush();
		
		return null;
	}

}
