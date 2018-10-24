package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.service.SeriesService;

public class SeriesServiceImpl implements SeriesService {
	private BaseDao baseDao;
	@Override
	public List<Map<String, Object>> queryAllSeries() {
		baseDao = new BaseDaoImpl();
		String sql = "select * from series where series_status = 1";
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
	}

}
