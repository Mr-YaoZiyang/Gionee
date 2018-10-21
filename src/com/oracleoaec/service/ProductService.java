package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Products;

public interface ProductService {
	/**
	 * 通过类别查找商品
	 * @return
	 */
	public List<Map<String, Object>> queryAllProduct(String proClass);
	/**
	 * 更具id查询商品
	 * @param phoneId
	 * @return
	 */
	public Map<String, Object> queryProductById(String proId);
	/**
	 * 查询明星代言手机，根据销量查询
	 * @param proClass
	 * @return
	 */
	public List<Map<String, Object>> queryStarPhone(String proClass);
	/**
	 * 增加销量
	 * @param product
	 * @return
	 */
	public int updateProductSalesById(Products product,String count);
}
