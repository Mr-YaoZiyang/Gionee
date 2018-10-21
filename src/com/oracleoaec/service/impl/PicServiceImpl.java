package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.service.PicService;

public class PicServiceImpl implements PicService {
	private BaseDao baseDao;

	@Override
	public List<Map<String, Object>> queryPicByproId(String proId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from pic where pro_id = "+proId;
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
	}


}
