package com.oracleoaec.dao;

import java.util.List;
import java.util.Map;

public interface BaseDao {
	/**
	 * ͨ�õ�����ɾ���ķ���
	 * 
	 * @param sql
	 * @return
	 */
	public int executeUpdate(String sql);

	/**
	 * 
	 * @param sql
	 * @param columnNames
	 *            ��ѯ������
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
	 * ͨ�õĹرշ���
	 */
	public void closeAny();

	/**
	 * ����ִ��
	 * 
	 * @param sqlList
	 *            sql��伯��
	 * @return
	 */
	public int executeUpdateTrans(List<String> sqlList);

	/**
	 * ����һ�����ݲ���������ֵ(oracle)
	 * 
	 * @param sql
	 * @param generatedColumns
	 * @return ���ص������� 
	 */
	public int executeInsert(String sql, String[] generatedColumns);

	/**
	 * ����һ�����ݲ���������ֵ(mysql)
	 * 
	 * @param sql
	 * @return ���ص�������
	 */
	public int executeInsert(String sql);

}
