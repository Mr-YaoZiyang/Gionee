package com.oracleoaec.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oracleoaec.service.CityService;
import com.oracleoaec.service.impl.CityServiceImpl;

import net.sf.json.JSONArray;

public class CityServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		String provinceId = req.getParameter("provinceId");
		CityService cs = new CityServiceImpl();
		List<Map<String,Object>> queryCityByProvinceId = cs.queryCityByProvinceId(provinceId);
		List<Map<String, Object>> cityList = new ArrayList<>();
		cityList.addAll(queryCityByProvinceId);
		JSONArray ja = JSONArray.fromObject(cityList);
		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().println(ja);
		resp.getWriter().flush();
		resp.getWriter().close();
	}
	
	
}
