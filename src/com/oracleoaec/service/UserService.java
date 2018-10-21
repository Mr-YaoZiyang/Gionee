package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Users;

public interface UserService {
	/**
	 * 用户登录
	 * @param userAccount
	 * @param userPwd
	 * @return
	 */
	public Map<String, Object> login(String userAccount,String userPwd);
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	public int addUser(Users user);
	/**
	 * 删除用户
	 * @param userId
	 * @return
	 */
	public int deleteUser(String userId);
	/**
	 * 更新用户
	 * @param user
	 * @return
	 */
	public int updateUser(Users user);
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<Map<String, Object>> queryAllUser();
	/**
	 * 根据id查询用户
	 * @param userId
	 * @return
	 */
	public Map<String, Object> queryUserById(String userId);
	/**
	 * 查询账号是否存在
	 * @param userAccount
	 * @return
	 */
	public List<Map<String, Object>> queryIsAccount(String userAccount);
	/**
	 * 更改收件信息
	 * @param user
	 * @return
	 */
	public int updateReceiptInfo(Users user);
	/**
	 * 根据用户id修改密码
	 * @param userPwd
	 * @return
	 */
	public int updateUserPwd(String userPwd,String userId);
	
}
