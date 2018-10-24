package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Footprint;

public interface FootprintService {
	/**
	 * �����㼣
	 * @return
	 */
	public List<Map<String, Object>> queryFootprint(String userId);
	/**
	 * ɾ���㼣
	 * @return
	 */
	public int deleteFootPrint(String userId,String proId);
	/**
	 * ����㼣
	 * @param footprint
	 * @return
	 */
	public int addFootPrint(Footprint footprint);
}
