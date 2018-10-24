package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.oracleoaec.pojo.UserAddress;
import com.oracleoaec.service.UserAddressService;
import com.oracleoaec.service.impl.UserAddressServiceImpl;
import net.sf.json.JSONObject;

public class AddAddressServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json; charset=utf-8");
		req.setCharacterEncoding("UTF-8");
		String provinceId = req.getParameter("provinceId");
		String cityId = req.getParameter("cityId");
		String address = req.getParameter("address");
		String userName = req.getParameter("userName");
		String userTel = req.getParameter("tel");
		HttpSession session = req.getSession();
		Map userMap = (Map) session.getAttribute("userMap");
		
		UserAddress u  = new UserAddress();
		u.setProvinceId(new Integer(provinceId));
		u.setCityId(new Integer(cityId));
		u.setUserAddress(address);
		u.setUserAddressRname(userName);
		u.setUserAddressTel(userTel);
		u.setUserId(new Integer(userMap.get("USER_ID").toString()));
		
		UserAddressService us = new UserAddressServiceImpl();
		int i = us.addUserAddress(u);
		BigDecimal  userId= (BigDecimal) userMap.get("USER_ID");
		Map<String, Object> queryuserAddressByuserId = us.queryuserAddressByuserId(userId.toString());
		JSONObject jo = JSONObject.fromObject(queryuserAddressByuserId);
		System.out.println(jo);
		resp.getWriter().println(jo);
		resp.getWriter().flush();
		resp.getWriter().close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
