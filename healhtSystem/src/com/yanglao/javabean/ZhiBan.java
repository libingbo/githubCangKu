package com.yanglao.javabean;

public class ZhiBan {

	public ZhiBan(String name, String data, String time, String message) {
		super();
		this.name = name;
		this.data = data;
		this.time = time;
		this.message = message;
	}
	public ZhiBan() {
		super();
	}
	
	int id;
	String name;
	String data;
	String time;
	String message;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
