package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.service.ModelService;

public class ModelServiceImpl implements ModelService {
	private BaseDao baseDao;
	@Override
	public List<Map<String, Object>> queryAllModel() {
		baseDao = new BaseDaoImpl();
		String sql = "select * from models where model_status = 1";
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
		
	}

}
