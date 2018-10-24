package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface SeriesService {
	/**
	 * 查询全部的系列
	 * @return
	 */
	public List<Map<String, Object>> queryAllSeries();
}
