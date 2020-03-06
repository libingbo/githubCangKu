package com.yanglao.javabean;

public class ZhenDuan {

	public ZhenDuan(int healthId, String doctor, String date, String sick,
			String state) {
		super();
		this.healthId = healthId;
		this.doctor = doctor;
		this.date = date;
		this.sick = sick;
		this.state = state;
	}
	public ZhenDuan() {
		super();
	}
	int id;
	int healthId;
	String doctor;
	String date;
	String sick;
	String state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getHealthId() {
		return healthId;
	}
	public void setHealthId(int healthId) {
		this.healthId = healthId;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSick() {
		return sick;
	}
	public void setSick(String sick) {
		this.sick = sick;
	}
	public String  getState() {
		return state;
	}
	public void setState(String  state) {
		this.state = state;
	}
}
