package com.yanglao.javabean;

public class Health {

	public Health(String userObj, int xinlv, int xueya, int hxpl, int tiwen,
			int tizhong, String healthDesc, String testDate) {
		super();
		this.userObj = userObj;
		this.xinlv = xinlv;
		this.xueya = xueya;
		this.hxpl = hxpl;
		this.tiwen = tiwen;
		this.tizhong = tizhong;
		this.healthDesc = healthDesc;
		this.testDate = testDate;
	}
	public Health() {
		super();
	}
	
	int healthId;
	String userObj;
	int xinlv;
	int xueya;
	int hxpl;
	int tiwen;
	int tizhong;
	String healthDesc;
	String testDate;
	
	
	public int getHealthId() {
		return healthId;
	}
	public void setHealthId(int healthId) {
		this.healthId = healthId;
	}
	public String getUserObj() {
		return userObj;
	}
	public void setUserObj(String userObj) {
		this.userObj = userObj;
	}
	public int getXinlv() {
		return xinlv;
	}
	public void setXinlv(int xinlv) {
		this.xinlv = xinlv;
	}
	public int getXueya() {
		return xueya;
	}
	public void setXueya(int xueya) {
		this.xueya = xueya;
	}
	public int getHxpl() {
		return hxpl;
	}
	public void setHxpl(int hxpl) {
		this.hxpl = hxpl;
	}
	public int getTiwen() {
		return tiwen;
	}
	public void setTiwen(int tiwen) {
		this.tiwen = tiwen;
	}
	public int getTizhong() {
		return tizhong;
	}
	public void setTizhong(int tizhong) {
		this.tizhong = tizhong;
	}
	public String getHealthDesc() {
		return healthDesc;
	}
	public void setHealthDesc(String healthDesc) {
		this.healthDesc = healthDesc;
	}
	public String getTestDate() {
		return testDate;
	}
	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}
	
}
