package com.oracleoaec.pojo;

public class ShoppingCar {
	private Integer shoppingId;
	private Integer proId;
	private Integer userId;
	private Integer shoppingCount;
	public ShoppingCar(Integer shoppingId, Integer proId, Integer userId, Integer shoppingCount) {
		this.shoppingId = shoppingId;
		this.proId = proId;
		this.userId = userId;
		this.shoppingCount = shoppingCount;
	}
	public ShoppingCar() {
		super();
	}
	public Integer getShoppingId() {
		return shoppingId;
	}
	public void setShoppingId(Integer shoppingId) {
		this.shoppingId = shoppingId;
	}
	public Integer getProId() {
		return proId;
	}
	public void setProId(Integer proId) {
		this.proId = proId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getShoppingCount() {
		return shoppingCount;
	}
	public void setShoppingCount(Integer shoppingCount) {
		this.shoppingCount = shoppingCount;
	}
	
}
