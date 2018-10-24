package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface ModelService {
	/**
	 * 查看所有手机外观
	 * @return
	 */
	public List<Map<String, Object>> queryAllModel();
}
