package com.oracleoaec.pojo;

public class Footprint {
	private Integer footprintId;
	private Integer proId;
	private Integer userId;
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getFootprintId() {
		return footprintId;
	}
	public void setFootprintId(Integer footprintId) {
		this.footprintId = footprintId;
	}
	public Integer getProId() {
		return proId;
	}
	public void setProId(Integer proId) {
		this.proId = proId;
	}
	
	public Footprint(Integer footprintId, Integer proId, Integer userId) {
		super();
		this.footprintId = footprintId;
		this.proId = proId;
		this.userId = userId;
	}
	public Footprint() {
		super();
	}
	
}
