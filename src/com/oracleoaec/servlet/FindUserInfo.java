package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.UserServiceImpl;

import net.sf.json.JSONObject;

public class FindUserInfo extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Map<String, Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		
		UserService us = new UserServiceImpl();
		Map<String, Object> queryUserById = us.queryUserById(userId.toString());
		
		JSONObject jo = JSONObject.fromObject(queryUserById);
		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().println(jo);
		resp.getWriter().flush();
		resp.getWriter().close();
		
		
		
		
		
		
		
		
		
	}

	
}
