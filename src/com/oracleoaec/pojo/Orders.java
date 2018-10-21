package com.oracleoaec.pojo;

public class Orders {
	private Integer orderId;
	private Integer userId;
	private Integer userAddressId;
	private String orderDate;
	private Integer orderStatus;
	
	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", userAddressId=" + userAddressId + ", orderDate="
				+ orderDate + ", orderStatus=" + orderStatus + "]";
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getUserAddressId() {
		return userAddressId;
	}
	public void setUserAddressId(Integer userAddressId) {
		this.userAddressId = userAddressId;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Orders(Integer orderId, Integer userId, Integer userAddressId, String orderDate, Integer orderStatus) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.userAddressId = userAddressId;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
	}
	public Orders() {
		super();
	}
	
	
	
	
	
}
