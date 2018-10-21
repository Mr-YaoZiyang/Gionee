package com.oracleoaec.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		for (Cookie cookie : cookies) {
			String name = cookie.getName();
			if("user".equals(name)) {
				cookie.setMaxAge(0);
				resp.addCookie(cookie);
				String value = cookie.getValue();
				int maxAge = cookie.getMaxAge();
				HttpSession session = req.getSession();
				session.setAttribute("userMap", null);
				//System.out.println(name + "::::" + value + "----" + maxAge);
			}
		}
//		HttpSession session = req.getSession();
//		session.setAttribute("userMap", null);
		resp.sendRedirect("index.do");
	}
	
	
}
