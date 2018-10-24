package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.pojo.News;
import com.oracleoaec.service.NewsService;
import com.oracleoaec.service.impl.NewsServiceImpl;

public class NewsDetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String newsId = req.getParameter("newsId");
		
		NewsService ns = new NewsServiceImpl();
		Map<String, Object> queryNewsById = ns.queryNewsById(newsId);
		req.setAttribute("queryNewsById", queryNewsById);
		News news = new News();
		news.setNewsId(new Integer(newsId));
		news.setNewsViews(new Integer(queryNewsById.get("NEWS_VIEWS").toString()));
		int i = ns.updateViews(news);
		
		
		
		req.getRequestDispatcher("newsDetail.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	
}
