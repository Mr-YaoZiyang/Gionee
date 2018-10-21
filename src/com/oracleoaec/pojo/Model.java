package com.oracleoaec.pojo;

public class Model {
	private Integer modelId;
	private String modelName;
	private Integer modelStatus;
	public Integer getModelId() {
		return modelId;
	}
	public void setModelId(Integer modelId) {
		this.modelId = modelId;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public Integer getModelStatus() {
		return modelStatus;
	}
	public void setModelStatus(Integer modelStatus) {
		this.modelStatus = modelStatus;
	}
	public Model(Integer modelId, String modelName, Integer modelStatus) {
		super();
		this.modelId = modelId;
		this.modelName = modelName;
		this.modelStatus = modelStatus;
	}
	public Model() {
		super();
	}
	
}
