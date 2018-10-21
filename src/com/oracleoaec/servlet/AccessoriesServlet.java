package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.pojo.PageBean;
import com.oracleoaec.service.AccTypeService;
import com.oracleoaec.service.impl.AccTypeServiceImpl;
import com.oracleoaec.service.impl.PageServiceImpl;


public class AccessoriesServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String acctypeId = req.getParameter("acctypeId");
		req.setAttribute("acctypeId", acctypeId);
		AccTypeService ats = new AccTypeServiceImpl();
		List<Map<String,Object>> queryAllAccType = ats.queryAllAccType();
		req.setAttribute("queryAllAccType", queryAllAccType);

//		AccService as = new AccServiceImpl();
//		List<Map<String,Object>> queryAllAcc = as.queryAllAcc();
//		req.setAttribute("queryAllAcc", queryAllAcc);
		
		PageServiceImpl ps = new PageServiceImpl();
		String nowPageNum = req.getParameter("nowPageNum");
		if(nowPageNum ==null || "".equals(nowPageNum)) {
			nowPageNum="1";
		}
		String sql = "select * from products  where pro_status = 1 and pro_class = 2 ";
		if(acctypeId!=null&&!"".equals(acctypeId)) {
			sql+=" and acctype_Id = "+acctypeId;
		}
		PageBean pageBean = ps.getPageBean(nowPageNum, sql, "6");
		req.setAttribute("pageBean", pageBean);
		
		req.getRequestDispatcher("accessories.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	
}
