package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracleoaec.service.ShoppingCarService;
import com.oracleoaec.service.impl.ShoppingCarServiceImpl;

public class ShowShoppingCarServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ShoppingCarService ss = new ShoppingCarServiceImpl();
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		
		
		List<Map<String,Object>> queryShopping = ss.queryShopping(userId.toString());
		req.setAttribute("queryShopping", queryShopping);
		req.getRequestDispatcher("shoppingCar.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	
}









