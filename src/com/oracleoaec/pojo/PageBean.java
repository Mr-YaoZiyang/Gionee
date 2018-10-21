package com.oracleoaec.pojo;

import java.util.List;
import java.util.Map;

public class PageBean {

	private String nowPageNum; // 当前的页码

	private List<Map<String, Object>> list; // 页面要显示的集合

	private String pageCount; // 总页面数

	private String pageInfoCount; // 每页显示几条记录

	private String allCount; // 总记录数

	public String getNowPageNum() {
		return nowPageNum;
	}

	public void setNowPageNum(String nowPageNum) {
		this.nowPageNum = nowPageNum;
	}

	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}

	public String getPageCount() {
		return pageCount;
	}

	public void setPageCount(String pageCount) {
		this.pageCount = pageCount;
	}

	public String getPageInfoCount() {
		return pageInfoCount;
	}

	public void setPageInfoCount(String pageInfoCount) {
		this.pageInfoCount = pageInfoCount;
	}

	public String getAllCount() {
		return allCount;
	}

	public void setAllCount(String allCount) {
		this.allCount = allCount;
	}
}
