package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface CityService {
	/**
	 * 根据省的id查询城市
	 * @param provinceId
	 * @return
	 */
	public List<Map<String, Object>> queryCityByProvinceId(String provinceId);
	/**
	 * 根据市id查询市
	 * @param cityId
	 * @return
	 */
	public Map<String, Object> queryCityById(String cityId);
}
