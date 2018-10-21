package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.ShoppingCar;

public interface ShoppingCarService {
	/**
	 * 添加到购物车当中
	 * @param order
	 * @return
	 */
	public int addShoppingCar(ShoppingCar shopping);
	/**
	 * 查询当前用户的购物车
	 * @param userId
	 * @return
	 */
	public List<Map<String, Object>> queryShopping(String userId);
	/**
	 * 在购物车中移除商品
	 * @param orderId
	 * @return
	 */
	public int removeShoppingCar(String shoppingId);
	/**
	 * 查询购物车中的数量
	 * @param userId
	 * @return
	 */
	public Map<String, Object> shoppingCarCount(String userId);
	/**
	 * 更新购物车中的数量
	 * @param shoppingId
	 * @param shoppingCount
	 * @return
	 */
	public int updateShoppingCarCount(String shoppingId,String shoppingCount);
	/**
	 * 根据购物车的id查询商品
	 * @param shoppingId
	 * @return
	 */
	public Map<String, Object> queryShoppingById(String shoppingId);
	
}
