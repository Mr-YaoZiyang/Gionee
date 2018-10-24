package com.oracleoaec.pojo;

public class UserAddress {
	private Integer userAddressId;
	private Integer userId;
	private Integer cityId;
	private Integer provinceId;
	private String userAddress;
	private String userAddressRname;
	private String userAddressTel;
	private Integer userAddressStatus;
	public Integer getUserAddressId() {
		return userAddressId;
	}
	public void setUserAddressId(Integer userAddressId) {
		this.userAddressId = userAddressId;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserAddressRname() {
		return userAddressRname;
	}
	public void setUserAddressRname(String userAddressRname) {
		this.userAddressRname = userAddressRname;
	}
	public String getUserAddressTel() {
		return userAddressTel;
	}
	public void setUserAddressTel(String userAddressTel) {
		this.userAddressTel = userAddressTel;
	}
	public Integer getUserAddressStatus() {
		return userAddressStatus;
	}
	public void setUserAddressStatus(Integer userAddressStatus) {
		this.userAddressStatus = userAddressStatus;
	}
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public Integer getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}
	
	public UserAddress(Integer userAddressId, Integer userId, Integer cityId, Integer provinceId, String userAddress,
			String userAddressRname, String userAddressTel, Integer userAddressStatus) {
		super();
		this.userAddressId = userAddressId;
		this.userId = userId;
		this.cityId = cityId;
		this.provinceId = provinceId;
		this.userAddress = userAddress;
		this.userAddressRname = userAddressRname;
		this.userAddressTel = userAddressTel;
		this.userAddressStatus = userAddressStatus;
	}
	public UserAddress() {
		super();
	}
	
}
