package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.News;
import com.oracleoaec.service.NewsService;

public class NewsServiceImpl implements NewsService {
	private BaseDao baseDao;

	@Override
	public Map<String, Object> queryNewsById(String newsId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from news where news_status = 1 and news_id = " + newsId;
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new HashMap<>();
		} else {
			return queryForlist.get(0);
		}
	}

	@Override
	public List<Map<String, Object>> queryAllNews() {
		baseDao = new BaseDaoImpl();
		String sql = "select * from news where news_status = 1 order by news_views desc ";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new ArrayList<>();
		} else {
			return queryForlist;
		}
	}

	@Override
	public int updateViews(News news) {
		baseDao = new BaseDaoImpl();
		String sql = "update news set news_views = (" + news.getNewsViews() + "+1)"
				+ " where news_id = " + news.getNewsId();
		int i = baseDao.executeUpdate(sql);
		return i;
	}

}
