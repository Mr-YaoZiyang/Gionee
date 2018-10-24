package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.service.ProvinceService;

public class ProvinceServiceImpl implements ProvinceService {
	private BaseDao baseDao;
	@Override
	public List<Map<String, Object>> queryAllProvince() {
		baseDao = new BaseDaoImpl();
		String sql = "select * from province";
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
		
	}
	@Override
	public Map<String, Object> queryProvinceById(String provinceId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from province where province_id = "+provinceId;
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new HashMap<String, Object>();
		}else {
			return queryForlist.get(0);
		}
	}

}
