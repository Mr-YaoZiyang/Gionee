package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.pojo.Users;
import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.UserServiceImpl;
import com.oracleoaec.util.MD5;

import net.sf.json.JSONObject;

public class RegisterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String userName = req.getParameter("userName");
		String userAccount = req.getParameter("userAccount");
		String userPwd = req.getParameter("userPwd");
		String userTel = req.getParameter("userTel");
		UserService us = new UserServiceImpl();
		Map map = new HashMap<>();
		
		Users u = new Users();
		u.setUserAccount(MD5.md5(userAccount, "1"));
		u.setUserPwd(MD5.md5(userPwd, "1"));
		u.setUserName(userName);
		u.setUserTel(userTel);
		u.setUserStates(0);
		int i = us.addUser(u);
		if(i>0) {
			map.put("Account", true);
		}else {
			map.put("Account", false);
		}
		JSONObject jsonobj = JSONObject.fromObject(map);
		resp.getWriter().println(jsonobj);
		resp.getWriter().flush();
		resp.getWriter().close();
	}

	
}
