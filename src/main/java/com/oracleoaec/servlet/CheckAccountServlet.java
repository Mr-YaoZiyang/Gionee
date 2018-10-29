package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.UserServiceImpl;
import com.oracleoaec.util.MD5;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class CheckAccountServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		String userAccount = req.getParameter("userAccount");
		UserService us = new UserServiceImpl();
		Map<String,Object> list = us.queryIsAccount(MD5.md5(userAccount, "1"));

		JSONObject jo = JSONObject.fromObject(list);
		resp.getWriter().print(jo);
		resp.getWriter().flush();
		resp.getWriter().close();
	}

	
	
}
