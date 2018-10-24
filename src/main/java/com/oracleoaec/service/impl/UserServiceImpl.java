package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.Users;
import com.oracleoaec.service.UserService;

public class UserServiceImpl implements UserService {
	private BaseDao baseDao;

	@Override
	public Map<String, Object> login(String userAccount, String userPwd) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from users where user_status =1 and user_account = '" + userAccount
				+ "' and user_pwd = '" + userPwd + "'";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return null;
		} else {
			return queryForlist.get(0);
		}
	}

	@Override
	public int addUser(Users user) {
		baseDao = new BaseDaoImpl();
		String sql = "insert into users(user_id,user_name,user_account,user_pwd,"
				+ "user_tel,user_states,user_sex,user_status) " + "values(seq_users.nextval,'"
				+ user.getUserName() + "','" + user.getUserAccount() + "',"
				+ "'" + user.getUserPwd() + "',"+"'" + user.getUserTel() + "',"
				+ user.getUserStates() + ",1,1)";
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public int deleteUser(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "update users set user_status = 0 where user_id=" + userId;
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public int updateUser(Users user) {
		baseDao = new BaseDaoImpl();
		String sql = "update users set user_name = '" + user.getUserName() + "',"
				+ " user_sex=" + user.getUserSex() + ",user_birthday='"
				+ user.getUserBirthday() + "',user_tel='" + user.getUserTel() + "'"
						+ " where user_id=" + user.getUserId();
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public List<Map<String, Object>> queryAllUser() {
		baseDao = new BaseDaoImpl();
		String sql = "select * from users where user_status =1 ";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new ArrayList<>();
		} else {
			return queryForlist;
		}
	}

	@Override
	public Map<String, Object> queryUserById(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from users where user_status =1 and user_id = "+userId;
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return new HashMap<>();
		} else {
			return queryForlist.get(0);
		}
	}

	@Override
	public Map<String, Object> queryIsAccount(String userAccount) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from users where user_status =1 and user_account = '"+userAccount+"'";
		List<Map<String, Object>> queryForlist = baseDao.queryForlist(sql);
		if (queryForlist.size() == 0) {
			return null;
		} else {
			return queryForlist.get(0);
		}
	}

	@Override
	public int updateReceiptInfo(Users user) {
		baseDao = new BaseDaoImpl();
		String sql = "update users set user_account='" + user.getUserAccount()
				+ "'" + ",user_pwd='" + user.getUserPwd() + "',user_sex=" + user.getUserSex() + ",birthday='"
				+ user.getUserBirthday() + "',user_tel='" + user.getUserTel() +"'"
				+ " where user_id=" + user.getUserId();
		int i = baseDao.executeUpdate(sql);
		return i;
	}

	@Override
	public int updateUserPwd(String userPwd, String userId) {
		baseDao = new BaseDaoImpl();
		String sql="update users set user_pwd = '"+userPwd+"' where user_id = "+userId;
		int i = baseDao.executeUpdate(sql);
		return i;
	}
	

}
