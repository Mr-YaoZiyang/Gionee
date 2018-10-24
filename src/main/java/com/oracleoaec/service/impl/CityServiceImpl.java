package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.service.CityService;

public class CityServiceImpl implements CityService {
	private BaseDao baseDao;
	@Override
	public List<Map<String, Object>> queryCityByProvinceId(String provinceId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from city where province_id = "+provinceId;
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
	}
	@Override
	public Map<String, Object> queryCityById(String cityId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from city where city_id = "+cityId;
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new HashMap<String, Object>();
		}else {
			return queryForlist.get(0);
		}
	}

}
