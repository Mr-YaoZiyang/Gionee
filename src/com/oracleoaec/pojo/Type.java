package com.oracleoaec.pojo;

public class Type {
	private Integer typeId;
	private String typeName;
	private Integer typeStatus;
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Integer getTypeStatus() {
		return typeStatus;
	}
	public void setTypeStatus(Integer typeStatus) {
		this.typeStatus = typeStatus;
	}
	public Type(Integer typeId, String typeName, Integer typeStatus) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.typeStatus = typeStatus;
	}
	public Type() {
		super();
	}
	
}
