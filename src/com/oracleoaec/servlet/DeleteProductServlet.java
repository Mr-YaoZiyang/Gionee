package com.oracleoaec.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.service.OrderService;
import com.oracleoaec.service.ShoppingCarService;
import com.oracleoaec.service.impl.OrderServiceImpl;
import com.oracleoaec.service.impl.ShoppingCarServiceImpl;

public class DeleteProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String shoppingId = req.getParameter("shoppingId");
		ShoppingCarService ss = new ShoppingCarServiceImpl();
		int i = ss.removeShoppingCar(shoppingId);
		resp.sendRedirect("showShoppingCar.do");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	
}
