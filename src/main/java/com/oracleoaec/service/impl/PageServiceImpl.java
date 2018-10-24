package com.oracleoaec.service.impl;

import java.util.List;
import java.util.Map;

import com.oracleoaec.dao.BaseDao;
import com.oracleoaec.dao.impl.BaseDaoImpl;
import com.oracleoaec.pojo.PageBean;

public class PageServiceImpl {
	
	
	public PageBean getPageBean(String pageNum,String sql,String pageInfoCount) {
		BaseDao baseDao = new BaseDaoImpl();
		PageBean pb = new PageBean();
		//��õ�ǰҳ�������
		StringBuffer pageSql = new StringBuffer();
		pageSql.append("select * from ");
		pageSql.append("(select m.*,rownum rn from ");
		pageSql.append(" ("+sql+") m ");
		pageSql.append(" where rownum<="+pageInfoCount+"*"+pageNum+") m1 ");
		pageSql.append(" where rn>"+pageInfoCount+"*("+pageNum+"-1)");
		List<Map<String,Object>> queryForlist = baseDao.queryForlist(pageSql.toString());
		//��õ�ǰҳ�������
		pb.setList(queryForlist);
		//��ǰҳ��
		pb.setNowPageNum(pageNum);
		//��ǰҳ��ļ�¼��
		pb.setPageInfoCount(pageInfoCount);
		//�ܼ�¼��
		pb.setAllCount(this.getAllCount(sql));
		//����ܼ�¼��
		pb.setPageCount(this.getPageCount(sql, pageInfoCount));
		
		return pb;
		
	}
	//����ܼ�¼��
	private String getAllCount(String sql){
		BaseDao bd = new BaseDaoImpl();
		List list = bd.queryForlist(sql);
		int i = list.size();
		return i+"";
	}
	//�����ҳ����
	private String getPageCount(String sql,String pageInfoCount){
		BaseDao bd = new BaseDaoImpl();
		List list = bd.queryForlist(sql);
		int i = list.size();
		int m = i%new Integer(pageInfoCount);
		if(m > 0){
			return (i/new Integer(pageInfoCount)+1)+"";
		}else{
			return i/new Integer(pageInfoCount)+"";
		}
	}
}
