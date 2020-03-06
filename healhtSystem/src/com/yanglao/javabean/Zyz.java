package com.yanglao.javabean;

public class Zyz {

	public Zyz(String data, String time, String name, String message) {
		super();
		this.data = data;
		this.time = time;
		this.name = name;
		this.message = message;
	}
	public Zyz() {
		super();
	}
	int id;
	String data;
	String time;
	String name;
	String message;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getdata() {
		return data;
	}
	public void setdata(String data) {
		this.data = data;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
