package com.oracleoaec.pojo;

import java.util.List;
import java.util.Map;

public class PageBean {

	private String nowPageNum; // ��ǰ��ҳ��

	private List<Map<String, Object>> list; // ҳ��Ҫ��ʾ�ļ���

	private String pageCount; // ��ҳ����

	private String pageInfoCount; // ÿҳ��ʾ������¼

	private String allCount; // �ܼ�¼��

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
