package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface PicService {
	/**
	 * 根据商品id查询图片
	 * @param phoneId
	 * @return
	 */
	public List<Map<String, Object>> queryPicByproId(String proId);
}
