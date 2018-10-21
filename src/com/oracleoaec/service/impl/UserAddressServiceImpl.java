package com.oracleoaec.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.UserAddress;
import com.oracleoaec.service.UserAddressService;

public class UserAddressServiceImpl implements UserAddressService {
	private BaseDao baseDao;
	@Override
	public int addUserAddress(UserAddress userAddress) {
		baseDao = new BaseDaoImpl();
		String sql = "insert into userAddress(Useraddress_Id,User_Id,City_Id,Province_Id,"
		+ "UserAddress,Useraddress_Status, Useraddress_Rname,User_Tel) "
		+ " values(SEQ_USERADDRESS.nextval,"+userAddress.getUserId()+","
		+ ""+userAddress.getCityId()+","+userAddress.getProvinceId()+","
		+ "'"+userAddress.getUserAddress()+"',1,'"+userAddress.getUserAddressRname()+"',"
		+ "'"+userAddress.getUserAddressTel()+"')";
		System.out.println(sql);
		String[] generatedColumns = {"Useraddress_Id"};
		
		int i = baseDao.executeInsert(sql, generatedColumns);
		
		return i;
	}
	@Override
	public Map<String, Object> queryuserAddressByuserId(String userId) {
		baseDao = new BaseDaoImpl();
		String sql = "select * from useraddress u "
				+ " join province p on u.province_id = p.province_id "
				+ " join city c on c.city_id = u.city_id "
				+ " where user_id = "+userId;
		sql+=" order by userAddress_id desc";
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(sql);
		if(queryForlist.size()==0) {
			return null;
		}else {
			return queryForlist.get(0);
		}
		
	}

}
