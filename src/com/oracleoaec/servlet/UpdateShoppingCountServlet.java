package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.service.ShoppingCarService;
import com.oracleoaec.service.impl.ShoppingCarServiceImpl;

import net.sf.json.JSONObject;

public class UpdateShoppingCountServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String shoppingId = req.getParameter("shoppingId");
		String shoppingCount = req.getParameter("shoppingCount");
		ShoppingCarService ss = new ShoppingCarServiceImpl();
		int i = ss.updateShoppingCarCount(shoppingId, shoppingCount);
		Map map = new HashMap();
		if(i>0) {
			map.put("callback", true);
		}else {
			map.put("callback", false);
		}
		JSONObject jsonobj = JSONObject.fromObject(map);
		resp.getWriter().println(jsonobj);
		resp.getWriter().flush();
		resp.getWriter().close();	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}

	
}
