package com.oracleoaec.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.pojo.PageBean;
import com.oracleoaec.service.ModelService;
import com.oracleoaec.service.SeriesService;
import com.oracleoaec.service.TypeService;
import com.oracleoaec.service.impl.ModelServiceImpl;
import com.oracleoaec.service.impl.PageServiceImpl;
import com.oracleoaec.service.impl.SeriesServiceImpl;
import com.oracleoaec.service.impl.TypeServiceImpl;


public class PhoneServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String typeId = req.getParameter("typeId");
		String modelId = req.getParameter("modelId");
		String seriesId = req.getParameter("seriesId");
		req.setAttribute("typeId", typeId);
		req.setAttribute("modelId", modelId);
		req.setAttribute("seriesId", seriesId);

		req.setAttribute("typeId", typeId);
		TypeService ts = new TypeServiceImpl();
		List<Map<String,Object>> queryAllType = ts.queryAllType();
		req.setAttribute("queryAllType", queryAllType);
		
		ModelService ms = new ModelServiceImpl();
		List<Map<String,Object>> queryAllModel = ms.queryAllModel();
		req.setAttribute("queryAllModel", queryAllModel);
		
		SeriesService ss = new SeriesServiceImpl();
		List<Map<String,Object>> queryAllSeries = ss.queryAllSeries();
		req.setAttribute("queryAllSeries", queryAllSeries);
		/*分页查询开始*/
		PageServiceImpl ps = new PageServiceImpl();
		String nowPageNum = req.getParameter("nowPageNum");
		if(nowPageNum ==null || "".equals(nowPageNum)) {
			nowPageNum="1";
		}
		
		/*sql   start*/
		String sql = "select * from products where pro_status = 1 and pro_class = 1 ";
		if(typeId!=null&&!"".equals(typeId)) {
			sql+=" and type_id = "+typeId;
		}
		if(modelId!=null&&!"".equals(modelId)) {
			sql+=" and model_id="+modelId;
		}
		if(seriesId!=null&&!"".equals(seriesId)) {
			sql+=" and series_id = "+seriesId;
		}
		/*sql end*/
		
		PageBean pageBean = ps.getPageBean(nowPageNum, sql, "8");
		req.setAttribute("pageBean", pageBean);
		/*分页查询结束*/
		req.getRequestDispatcher("phone.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
