package com.oracleoaec.pojo;

public class Items {
	private Integer itemId;
	private Integer orderId;
	private Integer proId;
	private Integer itemCount;
	public Integer getItemId() {
		return itemId;
	}
	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getProId() {
		return proId;
	}
	public void setProId(Integer proId) {
		this.proId = proId;
	}
	public Integer getItemCount() {
		return itemCount;
	}
	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}
	public Items(Integer itemId, Integer orderId, Integer proId, Integer itemCount) {
		super();
		this.itemId = itemId;
		this.orderId = orderId;
		this.proId = proId;
		this.itemCount = itemCount;
	}
	public Items() {
		super();
	}
	
}
