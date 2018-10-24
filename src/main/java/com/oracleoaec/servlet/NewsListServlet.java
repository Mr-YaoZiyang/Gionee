package com.oracleoaec.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.pojo.PageBean;
import com.oracleoaec.service.impl.PageServiceImpl;

public class NewsListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		/*分页查询开始*/
		PageServiceImpl ps = new PageServiceImpl();
		String nowPageNum = req.getParameter("nowPageNum");
		if(nowPageNum ==null || "".equals(nowPageNum)) {
			nowPageNum="1";
		}
		String sql = "select * from news where news_status =1 ";
		
		PageBean pageBean = ps.getPageBean(nowPageNum, sql, "5");
		req.setAttribute("pageBean", pageBean);
		/*分页查询结束*/
		
		req.getRequestDispatcher("newsList.jsp").forward(req, resp);
		
		
		
		
		
		
		
		
		
	}

	
}
