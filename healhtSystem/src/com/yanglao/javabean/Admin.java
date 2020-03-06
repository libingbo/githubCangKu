package com.yanglao.javabean;

public class Admin {

	public Admin(String name, String mm) {
		super();
		this.name = name;
		this.mm = mm;
	}
	public Admin() {
		super();
	}
	int id;
	String name;
	String mm;
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
	public String getMm() {
		return mm;
	}
	public void setMm(String mm) {
		this.mm = mm;
	}
	
}
