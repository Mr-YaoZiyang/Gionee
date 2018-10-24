package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Footprint;

public interface FootprintService {
	/**
	 * ²éÕÒ×ã¼£
	 * @return
	 */
	public List<Map<String, Object>> queryFootprint(String userId);
	/**
	 * É¾³ý×ã¼£
	 * @return
	 */
	public int deleteFootPrint(String userId,String proId);
	/**
	 * Ìí¼Ó×ã¼£
	 * @param footprint
	 * @return
	 */
	public int addFootPrint(Footprint footprint);
}
