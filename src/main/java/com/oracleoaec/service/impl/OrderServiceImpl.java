package com.oracleoaec.service.impl;


import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.Orders;
import com.oracleoaec.service.OrderService;

public class OrderServiceImpl implements OrderService {
	private BaseDao baseDao;

	@Override
	public int addOrders(Orders order) {
		baseDao = new BaseDaoImpl();
		String sql = "insert into orders(order_id, useraddress_id,user_id,order_date,order_status)"
				+ " values(seq_orders.nextval," + order.getUserAddressId() 
				+ "," + order.getUserId() + ",'"
				+ order.getOrderDate() + "',1)";
		String[] generatedColumns = {"order_id"};
		int i = baseDao.executeInsert(sql, generatedColumns);
		return i;
	}

	
}
