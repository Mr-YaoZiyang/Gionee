package com.oracleoaec.service.impl;

import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.Footprint;
import com.oracleoaec.service.FootprintService;

public class FootprintServiceImpl implements FootprintService {
	private BaseDao baseDao;

	@Override
	public List<Map<String, Object>> queryFootprint(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from footprint f " + " join products p on p.pro_id = f.pro_id "
				+ " join users u on u.user_id = f.user_id " + " where u.user_id = " + userId
				+ " order by footPrint_id asc";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return null;
		} else {
			return queryForlist;
		}

	}

	@Override
	public int deleteFootPrint(String userId, String proId) {
		baseDao = new BaseDaoImpl();
		String sql = "delete from footprint where user_id= " + userId + " and pro_id = " + proId;
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public int addFootPrint(Footprint footprint) {
		baseDao = new BaseDaoImpl();
		String sql = "insert into footprint(footprint_id,pro_id,user_id) ";
		sql += " values(seq_footprint.nextval," + footprint.getProId() + "," + footprint.getUserId() + ")";
		int i = baseDao.executeUpdate(sql);
		return i;
	}

}
