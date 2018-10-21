package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.Items;
import com.oracleoaec.service.ItemsService;

public class ItemsServiceImpl implements ItemsService {
	private BaseDao baseDao;
	@Override
	public int addItems(Items items) {
		baseDao = new BaseDaoImpl();
		String sql = "insert into items(item_id,order_id,pro_id,item_count) ";
		sql+=" values(SEQ_ITEMS.nextval,"+items.getOrderId()+",";
		sql+= items.getProId()+","+items.getItemCount()+")";
		int i = baseDao.executeUpdate(sql);
		return i;
	}
	@Override
	public List<Map<String, Object>> queryItemsByOrderId(String orderId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from items i "
				+ " join orders o on o.order_id = i.order_id "
				+ " join products p on p.pro_id = i.pro_id "
				+ " where i.order_id = "+orderId;
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
		
	}
	@Override
	public List<Map<String, Object>> queryItemsByUserId(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from items i "
				+ " join orders o on o.order_id = i.order_id "
				+ " join products p on p.pro_id = i.pro_id "
				+ " where o.user_Id = "+userId;
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return new ArrayList<>();
		}else {
			return queryForlist;
		}
	}

}
