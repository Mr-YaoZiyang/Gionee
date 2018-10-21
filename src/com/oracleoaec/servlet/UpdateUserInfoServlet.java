package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracleoaec.pojo.Users;
import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.UserServiceImpl;

import net.sf.json.JSONObject;

public class UpdateUserInfoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		super.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String sex = req.getParameter("sex");	
		String birthday = req.getParameter("birthday");	
		String tel = req.getParameter("tel");
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		System.out.println(userMap.toString());
		Users user = new Users();
		user.setUserId(userId.intValue());
		user.setUserName(name);
		user.setUserSex(new Integer(sex));
		user.setUserBirthday(birthday);
		user.setUserTel(tel);
		UserService us = new UserServiceImpl();
		int i = us.updateUser(user);
		if(i>0) {
			userMap.put("USER_NAME", name);
			userMap.put("USER_SEX", sex);
			userMap.put("USER_BIRTHDAY", birthday);
			userMap.put("USER_TEL", tel);
		}
		System.out.println(userMap.toString());
		Map<String, Object> queryUserById = us.queryUserById(userId.toString());
		JSONObject jo = JSONObject.fromObject(queryUserById);
		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().println(jo);
		resp.getWriter().flush();
		resp.getWriter().close();
	}

	
	
}
