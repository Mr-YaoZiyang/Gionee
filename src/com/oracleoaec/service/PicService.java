package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

public interface PicService {
	/**
	 * ������Ʒid��ѯͼƬ
	 * @param phoneId
	 * @return
	 */
	public List<Map<String, Object>> queryPicByproId(String proId);
}
