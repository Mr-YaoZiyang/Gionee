package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.Products;
import com.oracleoaec.service.ProductService;

public class ProductServiceImpl implements ProductService {
	private BaseDao baseDao;

	@Override
	public List<Map<String, Object>> queryAllProduct(String proClass) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from products p " + " left join types t on p.type_id = t.type_id "
				+ " left join models m on m.model_id = p.model_id "
				+ " left join series s on s.series_id = p.series_id "
				+ " left join acctype a on a.acctype_id = p.acctype_id " + " where pro_status = 1 and pro_class = "
				+ proClass + " order by pro_sales desc ";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new ArrayList<>();
		} else {
			return queryForlist;
		}
	}

	@Override
	public Map<String, Object> queryProductById(String proId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from products p " + " left join types t on p.type_id = t.type_id "
				+ " left join models m on m.model_id = p.model_id "
				+ " left join series s on s.series_id = p.series_id "
				+ " left join acctype a on a.acctype_id = p.acctype_id " + " where pro_status = 1 and pro_id = "
				+ proId;
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new HashMap<String, Object>();
		} else {
			return queryForlist.get(0);
		}
	}

	@Override
	public List<Map<String, Object>> queryStarPhone(String proClass) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from products p " + " left join types t on p.type_id = t.type_id "
				+ " left join models m on m.model_id = p.model_id "
				+ " left join series s on s.series_id = p.series_id "
				+ " left join acctype a on a.acctype_id = p.acctype_id "
				+ " where pro_status = 1 and pro_star is not null and pro_class = " + proClass
				+ "  order by PRO_SALES desc";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new ArrayList<>();
		} else {
			return queryForlist;
		}
	}

	@Override
	public int updateProductSalesById(Products product, String count) {
		baseDao = new BaseDaoImpl();
		String sql = "update products set pro_sales = " + " (" + product.getProSales() + "+" + count
				+ ")  where pro_id = " + product.getProId();
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public List<Map<String, Object>> searchProByProName(String proName,Integer proClass) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from products "
		+ " where pro_name like '%" + proName + "%' and pro_class = "+proClass;
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return null;
		} else {
			return queryForlist;
		}
		
	}

}
