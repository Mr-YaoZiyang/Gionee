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

import com.oracleoaec.pojo.Orders;
import com.oracleoaec.pojo.PageBean;
import com.oracleoaec.service.FootprintService;
import com.oracleoaec.service.ItemsService;
import com.oracleoaec.service.OrderService;
import com.oracleoaec.service.UserService;
import com.oracleoaec.service.impl.FootprintServiceImpl;
import com.oracleoaec.service.impl.ItemsServiceImpl;
import com.oracleoaec.service.impl.OrderServiceImpl;
import com.oracleoaec.service.impl.PageServiceImpl;
import com.oracleoaec.service.impl.UserServiceImpl;

public class PersonalCenterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		//查询订单
		/*ItemsService is = new ItemsServiceImpl();
		List<Map<String,Object>> queryItemsByUserId = is.queryItemsByUserId(userId.toString());
		req.setAttribute("queryItemsByUserId", queryItemsByUserId);*/
		/*分页查询开始*/
		PageServiceImpl ps = new PageServiceImpl();
		String nowPageNum = req.getParameter("nowPageNum");
		if(nowPageNum ==null || "".equals(nowPageNum)) {
			nowPageNum="1";
		}
		
		/*sql   start*/
		String sql = "select * from items i "
				+ " join orders o on o.order_id = i.order_id "
				+ " join products p on p.pro_id = i.pro_id "
				+ " where o.user_Id = "+userId;
		/*sql end*/
		
		PageBean pageBean = ps.getPageBean(nowPageNum, sql, "5");
		req.setAttribute("pageBean", pageBean);
		/*分页查询结束*/
		
		UserService us = new UserServiceImpl();
		Map<String, Object> queryUserById = us.queryUserById(userId.toString());
		req.setAttribute("queryUserById", queryUserById);
		//我的足迹
		FootprintService fs = new FootprintServiceImpl();
		List<Map<String,Object>> queryFootprint = fs.queryFootprint(userId.toString());
		req.setAttribute("queryFootprint", queryFootprint);
		
		
		req.getRequestDispatcher("personalCenter.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
}
