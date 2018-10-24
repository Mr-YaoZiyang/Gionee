package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.ShoppingCar;

public interface ShoppingCarService {
	/**
	 * ��ӵ����ﳵ����
	 * @param order
	 * @return
	 */
	public int addShoppingCar(ShoppingCar shopping);
	/**
	 * ��ѯ��ǰ�û��Ĺ��ﳵ
	 * @param userId
	 * @return
	 */
	public List<Map<String, Object>> queryShopping(String userId);
	/**
	 * �ڹ��ﳵ���Ƴ���Ʒ
	 * @param orderId
	 * @return
	 */
	public int removeShoppingCar(String shoppingId);
	/**
	 * ��ѯ���ﳵ�е�����
	 * @param userId
	 * @return
	 */
	public Map<String, Object> shoppingCarCount(String userId);
	/**
	 * ���¹��ﳵ�е�����
	 * @param shoppingId
	 * @param shoppingCount
	 * @return
	 */
	public int updateShoppingCarCount(String shoppingId,String shoppingCount);
	/**
	 * ���ݹ��ﳵ��id��ѯ��Ʒ
	 * @param shoppingId
	 * @return
	 */
	public Map<String, Object> queryShoppingById(String shoppingId);
	
}
