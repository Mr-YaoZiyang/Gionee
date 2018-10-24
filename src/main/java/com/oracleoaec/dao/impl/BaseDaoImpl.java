package com.oracleoaec.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.conn.ConnectionFactory;
import com.oracleoaec.dao.BaseDao;

public class BaseDaoImpl implements BaseDao {
	Connection conn = ConnectionFactory.getConn();
	Statement s = null;
	ResultSet rs = null;

	@Override
	public int executeUpdate(String sql) {
		int i = 0;
		try {
			Statement s = conn.createStatement();
			i = s.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAny();
		}
		return i;
	}

	@Override
	public List<Map<String, Object>> queryForlist(String sql, List<String> columnNames) {

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			s = conn.createStatement();
			rs = s.executeQuery(sql);

			while (rs.next()) {
				Map<String, Object> rowMap = new HashMap<>();

				for (String key : columnNames) {
					Object value = rs.getObject(key);
					rowMap.put(key, value);
				}
				list.add(rowMap);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAny();
		}

		return list;
	}

	@Override
	public void closeAny() {

		try {
			if (this.rs != null)
				rs.close();

			if (this.s != null)
				s.close();

			if (this.conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public List<Map<String, Object>> queryForlist(String sql) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			s = conn.createStatement();
			rs = s.executeQuery(sql);

			while (rs.next()) {
				// 自己提取列名
				Map<String, Object> rowMap = new HashMap<>();
				ResultSetMetaData rsmd = rs.getMetaData();
				int rowCount = rsmd.getColumnCount();

				for (int i = 1; i <= rowCount; i++) {
					// 列名
					String columnName = rsmd.getColumnName(i);
					Object value = rs.getObject(columnName);
					rowMap.put(columnName, value);
				}
				list.add(rowMap);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAny();
		}
		return list;
	}

	@Override
	public int executeUpdateTrans(List<String> sqlList) {
		// TODO Auto-generated method stub
		int i = 0;
		try {
			conn.setAutoCommit(false);

			s = conn.createStatement();

			for (String sql : sqlList) {
				i += s.executeUpdate(sql);
			}

			conn.commit();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			this.closeAny();
		}

		return i;
	}

	@Override
	public int executeInsert(String sql, String[] generatedColumns) {
		int primaryKey = 0;

		try {
			s = conn.createStatement();
			int i = s.executeUpdate(sql, generatedColumns);
			if (i > 0) {
				rs = s.getGeneratedKeys();
				if (rs.next()) {
					primaryKey = rs.getInt(1);
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAny();
		}
		return primaryKey;
	}

	@Override
	public int executeInsert(String sql) {
		int primaryKey = 0;

		try {
			s = conn.createStatement();
			int i = s.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
			if (i > 0) {
				rs = s.getGeneratedKeys();
				if (rs.next()) {
					primaryKey = rs.getInt(1);
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAny();
		}
		return primaryKey;
	}

}
