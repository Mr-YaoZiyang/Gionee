package com.oracleoaec.service;

import java.util.Map;

import com.oracleoaec.pojo.UserAddress;

public interface UserAddressService {
	/**
	 * ��userAddress����һ�����ݲ���������ֵ
	 * @param userAddress
	 * @return
	 */
	public int addUserAddress(UserAddress userAddress);
	
	public Map<String, Object> queryuserAddressByuserId(String userId);
}
