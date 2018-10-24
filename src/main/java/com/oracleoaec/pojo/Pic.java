package com.oracleoaec.pojo;

public class Pic {
	private Integer picId;
	private String picPath;
	private Integer proId;
	private Integer picStatus;
	
	public Pic() {
		super();
	}

	public Pic(Integer picId, String picPath, Integer proId, Integer picStatus) {
		super();
		this.picId = picId;
		this.picPath = picPath;
		this.proId = proId;
		this.picStatus = picStatus;
	}

	public Integer getPicId() {
		return picId;
	}

	public void setPicId(Integer picId) {
		this.picId = picId;
	}

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}

	public Integer getProId() {
		return proId;
	}

	public void setProId(Integer proId) {
		this.proId = proId;
	}

	public Integer getPicStatus() {
		return picStatus;
	}

	public void setPicStatus(Integer picStatus) {
		this.picStatus = picStatus;
	}
	
	
}
