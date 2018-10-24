package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface TypeService {
	/**
	 * 查询所有的手机类型
	 * @return
	 */
	public List<Map<String, Object>> queryAllType();
}
