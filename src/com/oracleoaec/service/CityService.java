package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface CityService {
	/**
	 * ����ʡ��id��ѯ����
	 * @param provinceId
	 * @return
	 */
	public List<Map<String, Object>> queryCityByProvinceId(String provinceId);
	/**
	 * ������id��ѯ��
	 * @param cityId
	 * @return
	 */
	public Map<String, Object> queryCityById(String cityId);
}
