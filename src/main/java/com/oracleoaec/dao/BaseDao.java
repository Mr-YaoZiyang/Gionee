package com.oracleoaec.dao;

import java.util.List;
import java.util.Map;

public interface BaseDao {
	/**
	 * 通用的增、删、改方法
	 * 
	 * @param sql
	 * @return
	 */
	public int executeUpdate(String sql);

	/**
	 * 
	 * @param sql
	 * @param columnNames
	 *            查询的列名
	 * @return
	 */
	public List<Map<String, Object>> queryForlist(String sql, List<String> columnNames);

	/**
	 * 
	 * @param sql
	 * @return
	 */
	public List<Map<String, Object>> queryForlist(String sql);

	/**
	 * 通用的关闭方法
	 */
	public void closeAny();

	/**
	 * 批量执行
	 * 
	 * @param sqlList
	 *            sql语句集合
	 * @return
	 */
	public int executeUpdateTrans(List<String> sqlList);

	/**
	 * 插入一条数据并返回主键值(oracle)
	 * 
	 * @param sql
	 * @param generatedColumns
	 * @return 返回的是主键 
	 */
	public int executeInsert(String sql, String[] generatedColumns);

	/**
	 * 插入一条数据并返回主键值(mysql)
	 * 
	 * @param sql
	 * @return 返回的是主键
	 */
	public int executeInsert(String sql);

}
