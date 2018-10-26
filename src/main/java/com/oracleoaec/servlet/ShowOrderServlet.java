package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.oracleoaec.pojo.Province;
import com.oracleoaec.service.OrderService;
import com.oracleoaec.service.ProductService;
import com.oracleoaec.service.ProvinceService;
import com.oracleoaec.service.ShoppingCarService;
import com.oracleoaec.service.UserAddressService;
import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.OrderServiceImpl;
import com.oracleoaec.service.impl.ProductServiceImpl;
import com.oracleoaec.service.impl.ProvinceServiceImpl;
import com.oracleoaec.service.impl.ShoppingCarServiceImpl;
import com.oracleoaec.service.impl.UserAddressServiceImpl;
import com.oracleoaec.service.impl.UserServiceImpl;

public class ShowOrderServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String[] shoppingId = req.getParameterValues("shoppingId");
		HttpSession session = req.getSession();
		Map userMap = (Map) session.getAttribute("userMap");
		BigDecimal  userId= (BigDecimal) userMap.get("USER_ID");
		
		ShoppingCarService ss = new ShoppingCarServiceImpl();
		List<Map<String, Object>> shopList = new ArrayList<>();
		if(shoppingId!=null) {
			for (String shopid : shoppingId) {
				Map<String, Object> queryShoppingById = ss.queryShoppingById(shopid);
				shopList.add(queryShoppingById);
				req.setAttribute("shopList", shopList);
			}
		}else {
			String proId = req.getParameter("proId");
			String count = req.getParameter("count");
			ProductService ps = new ProductServiceImpl();
			Map<String, Object> queryProductById = ps.queryProductById(proId);
			req.setAttribute("queryProductById", queryProductById);
			req.setAttribute("count", count);
			
		}
		
		
		UserAddressService us = new UserAddressServiceImpl();
		Map<String, Object> queryuserAddressByuserId = us.queryuserAddressByuserId(userId.toString());
		ProvinceService ps = new ProvinceServiceImpl();
		List<Map<String,Object>> queryAllProvince = ps.queryAllProvince();
		req.setAttribute("queryAllProvince", queryAllProvince);
		req.setAttribute("queryuserAddressByuserId", queryuserAddressByuserId);
		req.getRequestDispatcher("order.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}

	
}
