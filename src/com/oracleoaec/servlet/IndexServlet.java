package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.service.NewsService;
import com.oracleoaec.service.ProductService;
import com.oracleoaec.service.impl.NewsServiceImpl;
import com.oracleoaec.service.impl.ProductServiceImpl;



public class IndexServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductService ps = new ProductServiceImpl();
		List<Map<String,Object>> queryAllPhone = ps.queryAllProduct("1");
		req.setAttribute("queryAllPhone", queryAllPhone);
		
		
		List<Map<String,Object>> queryAllAcc = ps.queryAllProduct("2");
		req.setAttribute("queryAllAcc", queryAllAcc);
		
		List<Map<String,Object>> queryStarPhone = ps.queryStarPhone("1");
		req.setAttribute("queryStarPhone", queryStarPhone);
		
		NewsService ns = new NewsServiceImpl();
		List<Map<String,Object>> queryAllNews = ns.queryAllNews();
		req.setAttribute("queryAllNews", queryAllNews);
		
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
