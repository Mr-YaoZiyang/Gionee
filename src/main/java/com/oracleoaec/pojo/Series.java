package com.oracleoaec.pojo;

public class Series {
	private Integer seriesId;
	private String seriesName;
	private Integer seriesStatus;
	public Integer getSeriesId() {
		return seriesId;
	}
	public void setSeriesId(Integer seriesId) {
		this.seriesId = seriesId;
	}
	public String getSeriesName() {
		return seriesName;
	}
	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}
	public Integer getSeriesStatus() {
		return seriesStatus;
	}
	public void setSeriesStatus(Integer seriesStatus) {
		this.seriesStatus = seriesStatus;
	}
	public Series(Integer seriesId, String seriesName, Integer seriesStatus) {
		super();
		this.seriesId = seriesId;
		this.seriesName = seriesName;
		this.seriesStatus = seriesStatus;
	}
	public Series() {
		super();
	}
	
}
