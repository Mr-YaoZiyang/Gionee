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
import com.oracleoaec.util.MD5;

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
		UserService us = new UserServiceImpl();
		Map<String, Object> userMap = us.login(MD5.md5(userAccount, "1"), MD5.md5(userPwd, "1"));
		Map map = new HashMap();
		if(userMap==null) {
			map.put("flag", false);
		}else {
			map.put("flag", true);
			Cookie cookie = new Cookie("user", MD5.md5(userAccount, "1")+","+MD5.md5(userPwd, "1"));
			cookie.setMaxAge(60*60*24*7);
			resp.addCookie(cookie);
			HttpSession session = req.getSession();
			session.setAttribute("userMap", userMap);
		}
		JSONObject jsonobj = JSONObject.fromObject(map);
		resp.getWriter().println(jsonobj);
		resp.getWriter().flush();
		resp.getWriter().close();
	}

	
}
