package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracleoaec.pojo.ShoppingCar;
import com.oracleoaec.service.ShoppingCarService;

import com.oracleoaec.service.impl.ShoppingCarServiceImpl;


public class ShoppingCarServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String proId = req.getParameter("proId");
		String count = req.getParameter("count");
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		ShoppingCarService os = new ShoppingCarServiceImpl();
		
		ShoppingCar shopping = new ShoppingCar();
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		shopping.setShoppingCount(new Integer(count));
		shopping.setUserId(userId.intValue());
		
		/*if(phoneId!=null) {
			shopping.setPhoneId(new Integer(phoneId));
		}
		if(accId!=null) {
			shopping.setAccId(new Integer(accId));
		}*/
		shopping.setProId(new Integer(proId));
		int i = os.addShoppingCar(shopping);
		
		resp.sendRedirect("showShoppingCar.do");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	
}
