package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Items;

public interface ItemsService {
	/**
	 * ��ӵ���������ҳ��
	 * @param items
	 * @return
	 */
	public int addItems(Items items);
	/**
	 * ����orderId��ѯ��������
	 * @param orderId
	 * @return
	 */
	public List<Map<String, Object>> queryItemsByOrderId(String orderId);
	/**
	 * �����û�id��ѯ��������
	 * @param userId
	 * @return
	 */
	public List<Map<String, Object>> queryItemsByUserId(String userId);

}
