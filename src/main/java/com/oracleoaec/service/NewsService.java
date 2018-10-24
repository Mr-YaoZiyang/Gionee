package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.News;

public interface NewsService {
	/**
	 * 根据id查询新闻 
	 * @param newsId
	 * @return
	 */
	public Map<String, Object> queryNewsById(String newsId);
	/**
	 * 查询所有的新闻
	 * @return
	 */
	public List<Map<String, Object>> queryAllNews();
	/**
	 * 更新新闻浏览量
	 * @param news
	 * @return
	 */
	public int updateViews(News news);
}
