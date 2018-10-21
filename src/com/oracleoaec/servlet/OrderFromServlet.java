package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oracleoaec.pojo.Items;
import com.oracleoaec.pojo.Orders;
import com.oracleoaec.pojo.Products;
import com.oracleoaec.service.ItemsService;
import com.oracleoaec.service.OrderService;
import com.oracleoaec.service.ProductService;
import com.oracleoaec.service.ShoppingCarService;
import com.oracleoaec.service.UserAddressService;
import com.oracleoaec.service.impl.ItemsServiceImpl;
import com.oracleoaec.service.impl.OrderServiceImpl;
import com.oracleoaec.service.impl.ProductServiceImpl;
import com.oracleoaec.service.impl.ShoppingCarServiceImpl;
import com.oracleoaec.service.impl.UserAddressServiceImpl;

public class OrderFromServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userAddressId = req.getParameter("userAddressId");
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
		//日期格式转换
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(date);
		
		Orders order = new Orders();
		order.setOrderDate(dateString);
		order.setUserAddressId(new Integer(userAddressId));
		order.setUserId(userId.intValue());
		OrderService os = new OrderServiceImpl();
		int orderId = os.addOrders(order);
		Items items = new Items();
		items.setOrderId(orderId);
		ShoppingCarService ss = new ShoppingCarServiceImpl();
		String[] shoppingIdArr = req.getParameterValues("shoppingId");
		ItemsService is = new ItemsServiceImpl();
		BigDecimal proId = null;
		String count = null;
		if(shoppingIdArr!=null) {
			for (String shoppingId : shoppingIdArr) {
				Map<String, Object> map = ss.queryShoppingById(shoppingId);
				proId = (BigDecimal) map.get("PRO_ID");
				//购买的数量
				count = map.get("SHOPPING_COUNT").toString();
				items.setItemCount(new Integer(count));

				
				items.setProId(new Integer(map.get("PRO_ID").toString()));
				int i = is.addItems(items);
				int j = ss.removeShoppingCar(shoppingId);
				if(i>0) {				
					//查询原商品的销量
					ProductService ps = new ProductServiceImpl();
					Map<String, Object> queryProductById = ps.queryProductById(proId.toString());
					BigDecimal proSales = (BigDecimal) queryProductById.get("PRO_SALES");
					//更新产品表中的销量字段
					Products p = new Products();
					p.setProId(new Integer(proId.toString()));
					p.setProSales(new Integer(proSales.toString()));
					ps.updateProductSalesById(p,count);
				}
			}
		}else {
			String proId1 = req.getParameter("proId");
			count = req.getParameter("count");
			items.setItemCount(new Integer(count));
			items.setProId(new Integer(proId1));
			int i = is.addItems(items);
			if(i>0) {
				//查询原商品的销量
				ProductService ps = new ProductServiceImpl();
				Map<String, Object> queryProductById = ps.queryProductById(proId1);
				BigDecimal proSales = (BigDecimal) queryProductById.get("PRO_SALES");
				
				//更新产品表中的销量字段
				Products p = new Products();
				p.setProId(new Integer(proId1));
				p.setProSales(new Integer(proSales.toString()));
				ps.updateProductSalesById(p,count);
			}
			
		}
		//传地址
		UserAddressService us = new UserAddressServiceImpl();
		Map<String, Object> queryuserAddressByuserId = us.queryuserAddressByuserId(userId.toString());
		req.setAttribute("queryuserAddressByuserId", queryuserAddressByuserId);
		//传订单信息
		List<Map<String,Object>> queryItemsByOrderId = is.queryItemsByOrderId(new Integer(orderId).toString());
		req.setAttribute("queryItemsByOrderId", queryItemsByOrderId);
		
		
		
		
		req.getRequestDispatcher("orderEnd.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}

	
}
