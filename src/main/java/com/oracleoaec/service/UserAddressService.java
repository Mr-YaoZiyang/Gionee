package com.oracleoaec.service;

import java.util.Map;

import com.oracleoaec.pojo.UserAddress;

public interface UserAddressService {
	/**
	 * 向userAddress插入一条数据并返回主键值
	 * @param userAddress
	 * @return
	 */
	public int addUserAddress(UserAddress userAddress);
	
	public Map<String, Object> queryuserAddressByuserId(String userId);
}
