package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.service.TypeService;

public class TypeServiceImpl implements TypeService {
	private BaseDao baseDao;
	@Override
	public List<Map<String, Object>> queryAllType() {
		baseDao = new BaseDaoImpl();
		String sql = "select * from types where type_status = 1";
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
	}

}
