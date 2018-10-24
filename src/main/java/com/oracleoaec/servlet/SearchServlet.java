package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.service.impl.ProductServiceImpl;

public class SearchServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String searchCountent = req.getParameter("searchCountent");
		
		List<Map<String,Object>> phonelist = new ProductServiceImpl().searchProByProName(searchCountent,1);
		req.setAttribute("phonelist", phonelist);
		List<Map<String, Object>> accList = new ProductServiceImpl().searchProByProName(searchCountent,2);
		req.setAttribute("accList", accList);
		req.getRequestDispatcher("searchList.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	
}
