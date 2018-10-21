package com.oracleoaec.pojo;

public class Users {
	private Integer userId;
	private String userName;
	private String userAccount;
	private String userPwd;
	private Integer userSex;
	private String userBirthday;
	private String userTel;
	private Integer userStates;
	private Integer userStatus;
	
	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userName=" + userName + ", userAccount=" + userAccount + ", userPwd="
				+ userPwd + ", userSex=" + userSex + ", userBirthday=" + userBirthday + ", userTel=" + userTel
				+ ", userStates=" + userStates + ", userStatus=" + userStatus + "]";
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public Integer getUserSex() {
		return userSex;
	}
	public void setUserSex(Integer userSex) {
		this.userSex = userSex;
	}
	
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	
	public Integer getUserStates() {
		return userStates;
	}
	public void setUserStates(Integer userStates) {
		this.userStates = userStates;
	}
	public Integer getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}
	
	public Users(Integer userId, String userName, String userAccount, String userPwd, Integer userSex,
			String userBirthday, String userTel, Integer userStates, Integer userStatus) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userAccount = userAccount;
		this.userPwd = userPwd;
		this.userSex = userSex;
		this.userBirthday = userBirthday;
		this.userTel = userTel;
		this.userStates = userStates;
		this.userStatus = userStatus;
	}
	public Users() {
		super();
	}
	
}
