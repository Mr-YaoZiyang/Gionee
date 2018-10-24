package com.oracleoaec.pojo;

public class Acctype {
	private Integer acctypeId;
	private String acctypeName;
	private Integer acctypeStatus;
	public Integer getAcctypeId() {
		return acctypeId;
	}
	public void setAcctypeId(Integer acctypeId) {
		this.acctypeId = acctypeId;
	}
	public String getAcctypeName() {
		return acctypeName;
	}
	public void setAcctypeName(String acctypeName) {
		this.acctypeName = acctypeName;
	}
	public Integer getAcctypeStatus() {
		return acctypeStatus;
	}
	public void setAcctypeStatus(Integer acctypeStatus) {
		this.acctypeStatus = acctypeStatus;
	}
	public Acctype(Integer acctypeId, String acctypeName, Integer acctypeStatus) {
		super();
		this.acctypeId = acctypeId;
		this.acctypeName = acctypeName;
		this.acctypeStatus = acctypeStatus;
	}
	public Acctype() {
		super();
	}
	
}
