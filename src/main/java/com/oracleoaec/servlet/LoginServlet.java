package com.oracleoaec.servlet;

import java.io.IOException;
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

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		String userAccount = req.getParameter("userAccount");
		String userPwd = req.getParameter("userPwd");
		System.out.println(userAccount+","+userPwd);
		UserService us = new UserServiceImpl();
		Map<String, Object> userMap = us.login(userAccount, userPwd);
		Map map = new HashMap();
		
		if(userMap==null) {
			map.put("flag", false);
		}else {
			map.put("flag", true);
			Cookie cookie = new Cookie("user", userAccount+","+userPwd);
			cookie.setMaxAge(60*60*24*7);
			HttpSession session = req.getSession();
			session.setAttribute("userMap", userMap);
			resp.addCookie(cookie);
		}
		JSONObject jsonobj = JSONObject.fromObject(map);
		resp.getWriter().println(jsonobj);
		resp.getWriter().flush();
		resp.getWriter().close();
	}

	
}
