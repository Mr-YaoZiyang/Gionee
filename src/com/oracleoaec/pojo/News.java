package com.oracleoaec.pojo;

public class News {
	private Integer newsId;
	private String newsTitle;
	private String newsContent;
	private Integer newsStatus;
	private Integer newsViews;
	
	public Integer getNewsViews() {
		return newsViews;
	}
	public void setNewsViews(Integer newsViews) {
		this.newsViews = newsViews;
	}
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public Integer getNewsStatus() {
		return newsStatus;
	}
	public void setNewsStatus(Integer newsStatus) {
		this.newsStatus = newsStatus;
	}
	
	public News(Integer newsId, String newsTitle, String newsContent, Integer newsStatus, Integer newsViews) {
		super();
		this.newsId = newsId;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsStatus = newsStatus;
		this.newsViews = newsViews;
	}
	public News() {
		super();
	}
	
	
}
