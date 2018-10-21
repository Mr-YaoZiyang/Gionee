package com.oracleoaec.conn;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {
	
	private static String DIRVER;
	
	private static String URL;
	
	private static String USER;
	private static String PWD;
	
	static {
		Properties p = new Properties();
		
		InputStream ism = ConnectionFactory.class.getResourceAsStream("jdbcInfo.properties");
		
		try {
			p.load(ism);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				ism.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		DIRVER = p.getProperty("dirver");
		URL = p.getProperty("url");
		USER = p.getProperty("user");
		PWD = p.getProperty("pwd");
	}
	public static Connection getConn() {
		Connection conn = null;
		try {
			Class.forName(DIRVER);
			conn = DriverManager.getConnection(URL, USER, PWD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
}
