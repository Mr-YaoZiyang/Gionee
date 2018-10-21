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

import com.oracleoaec.pojo.Footprint;
import com.oracleoaec.service.FootprintService;
import com.oracleoaec.service.PicService;
import com.oracleoaec.service.ProductService;
import com.oracleoaec.service.impl.FootprintServiceImpl;
import com.oracleoaec.service.impl.PicServiceImpl;
import com.oracleoaec.service.impl.ProductServiceImpl;

public class ProductDetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String proId = req.getParameter("proId");
		
		HttpSession session = req.getSession();
		Map<String,Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
		if(userMap!=null) {
			BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
			/*  添加足迹全部过程   */
			FootprintService fs = new FootprintServiceImpl();
			//查询足迹
			List<Map<String,Object>> queryFootprint = fs.queryFootprint(userId.toString());
			BigDecimal proId1 = null;
			Footprint f = new Footprint();
			f.setProId(new Integer(proId));
			f.setUserId(userId.intValue());
			if(queryFootprint!=null) {//如果查出来结果不为null  在结果中获得pro_id 
				proId1 = (BigDecimal) queryFootprint.get(0).get("PRO_ID");
				//查询出来的结果和在页面穿过来的id相比较
				if(!proId.equals(proId1.toString())) {
					if(queryFootprint.size()>=3) {
						int i = fs.deleteFootPrint(userId.toString(), proId1.toString());
					}
					int i = fs.addFootPrint(f);
				}
			}else {
				int i = fs.addFootPrint(f);
			}
			/*******添加足迹结束*******/
		}
		
		
		ProductService ps = new ProductServiceImpl();
		PicService pics = new PicServiceImpl();
		Map<String, Object> queryProductById = ps.queryProductById(proId);
		req.setAttribute("queryProductById", queryProductById);
		List<Map<String, Object>> queryPicByproId = pics.queryPicByproId(proId);
		
		
		
		System.out.println(queryPicByproId);
		
		
		req.setAttribute("queryPicByproId", queryPicByproId);
		req.getRequestDispatcher("productDetail.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	
}
