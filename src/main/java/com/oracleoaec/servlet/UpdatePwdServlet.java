package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.UserServiceImpl;

import net.sf.json.JSONObject;

public class UpdatePwdServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pwd = req.getParameter("pwd");
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		
		UserService us = new UserServiceImpl();
		int i = us.updateUserPwd(pwd, userId.toString());
		Map map = new HashMap<>();
		if(i>0) {
			map.put("flag", true);
			userMap.put("USER_PWD", pwd);
			Cookie[] cookies = req.getCookies();
			for (Cookie cookie : cookies) {
				String name = cookie.getName();
				if("user".equals(name)) {
					String account = (String) userMap.get("USER_ACCOUNT");
					String pwd1 = (String) userMap.get("USER_PWD");
					cookie.setValue(account+","+pwd1);
					resp.addCookie(cookie);
				}
			}
		}else {
			map.put("flag", false);
		}
		JSONObject jo = JSONObject.fromObject(map);
		resp.getWriter().println(jo);
		resp.getWriter().flush();
		resp.getWriter().close();
		
		
		
		
	}

	
}
