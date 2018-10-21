package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Products;

public interface ProductService {
	/**
	 * ͨ����������Ʒ
	 * @return
	 */
	public List<Map<String, Object>> queryAllProduct(String proClass);
	/**
	 * ����id��ѯ��Ʒ
	 * @param phoneId
	 * @return
	 */
	public Map<String, Object> queryProductById(String proId);
	/**
	 * ��ѯ���Ǵ����ֻ�������������ѯ
	 * @param proClass
	 * @return
	 */
	public List<Map<String, Object>> queryStarPhone(String proClass);
	/**
	 * ��������
	 * @param product
	 * @return
	 */
	public int updateProductSalesById(Products product,String count);
}
