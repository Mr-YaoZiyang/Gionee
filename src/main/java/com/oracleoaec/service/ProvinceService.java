package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface ProvinceService {
	/**
	 * ��ѯ���е�ʡ
	 * @return
	 */
	public List<Map<String, Object>> queryAllProvince();
	/**
	 * ����ʡid��ѯʡ
	 * @param provinceId
	 * @return
	 */
	public Map<String, Object> queryProvinceById(String provinceId);
}
