package com.oracleoaec.service;

import java.util.List;
import java.util.Map;

import com.oracleoaec.pojo.Users;

public interface UserService {
	/**
	 * �û���¼
	 * @param userAccount
	 * @param userPwd
	 * @return
	 */
	public Map<String, Object> login(String userAccount,String userPwd);
	/**
	 * ����û�
	 * @param user
	 * @return
	 */
	public int addUser(Users user);
	/**
	 * ɾ���û�
	 * @param userId
	 * @return
	 */
	public int deleteUser(String userId);
	/**
	 * �����û�
	 * @param user
	 * @return
	 */
	public int updateUser(Users user);
	/**
	 * ��ѯ�����û�
	 * @return
	 */
	public List<Map<String, Object>> queryAllUser();
	/**
	 * ����id��ѯ�û�
	 * @param userId
	 * @return
	 */
	public Map<String, Object> queryUserById(String userId);
	/**
	 * ��ѯ�˺��Ƿ����
	 * @param userAccount
	 * @return
	 */
	public List<Map<String, Object>> queryIsAccount(String userAccount);
	/**
	 * �����ռ���Ϣ
	 * @param user
	 * @return
	 */
	public int updateReceiptInfo(Users user);
	/**
	 * �����û�id�޸�����
	 * @param userPwd
	 * @return
	 */
	public int updateUserPwd(String userPwd,String userId);
	
}
