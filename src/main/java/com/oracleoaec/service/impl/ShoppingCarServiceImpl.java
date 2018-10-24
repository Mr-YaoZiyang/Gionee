package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.ShoppingCar;
import com.oracleoaec.service.ShoppingCarService;

public class ShoppingCarServiceImpl implements ShoppingCarService {

	private BaseDao baseDao;

	@Override
	public int addShoppingCar(ShoppingCar shopping) {
		baseDao = new BaseDaoImpl();
		String sql = "insert into shoppingcar(shopping_id, pro_id, user_id,shopping_count)"
		+ "  values(SEQ_SHOPPINGCARINFO.nextval,"
		+ shopping.getProId() + "," + shopping.getUserId() + ","
		+ shopping.getShoppingCount() + ")";
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public List<Map<String, Object>> queryShopping(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from shoppingcar s ";
		sql += " left join users u on s.user_id = u.user_id ";
		sql += " left join products p on p.pro_id = s.pro_id ";
		sql += " where u.user_id = " + userId;
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new ArrayList<>();
		} else {
			return queryForlist;
		}
	}

	@Override
	public int removeShoppingCar(String shoppingId) {
		baseDao = new BaseDaoImpl();
		String sql = "delete from shoppingcar where shopping_id = "+shoppingId;
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public Map<String, Object> shoppingCarCount(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "select count(*) from shoppingcar where user_id = " + userId;
		List<Map<String, Object>> list = baseDao.queryForlist(sql);
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}

	}

	@Override
	public int updateShoppingCarCount(String shoppingId,String shoppingCount) {
		baseDao = new BaseDaoImpl();
		String sql = "update shoppingCar set shopping_count = "+shoppingCount+" "
		+ " where shopping_id = "+shoppingId;
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public Map<String, Object> queryShoppingById(String shoppingId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from shoppingcar s ";
		sql += " left join users u on s.user_id = u.user_id ";
		sql += " left join products p on p.pro_id = s.pro_id ";
		sql += " where  s.shopping_id = "+shoppingId;
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new HashMap<>();
		} else {
			return queryForlist.get(0);
		}
	}
}
