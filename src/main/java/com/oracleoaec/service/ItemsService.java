package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Items;

public interface ItemsService {
	/**
	 * 添加到订单详情页面
	 * @param items
	 * @return
	 */
	public int addItems(Items items);
	/**
	 * 根据orderId查询订单详情
	 * @param orderId
	 * @return
	 */
	public List<Map<String, Object>> queryItemsByOrderId(String orderId);
	/**
	 * 根据用户id查询订单详情
	 * @param userId
	 * @return
	 */
	public List<Map<String, Object>> queryItemsByUserId(String userId);

}
