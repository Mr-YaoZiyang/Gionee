package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface ProvinceService {
	/**
	 * 查询所有的省
	 * @return
	 */
	public List<Map<String, Object>> queryAllProvince();
	/**
	 * 根据省id查询省
	 * @param provinceId
	 * @return
	 */
	public Map<String, Object> queryProvinceById(String provinceId);
}
