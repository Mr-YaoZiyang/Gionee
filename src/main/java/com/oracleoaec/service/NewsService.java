package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.News;

public interface NewsService {
	/**
	 * ����id��ѯ���� 
	 * @param newsId
	 * @return
	 */
	public Map<String, Object> queryNewsById(String newsId);
	/**
	 * ��ѯ���е�����
	 * @return
	 */
	public List<Map<String, Object>> queryAllNews();
	/**
	 * �������������
	 * @param news
	 * @return
	 */
	public int updateViews(News news);
}
