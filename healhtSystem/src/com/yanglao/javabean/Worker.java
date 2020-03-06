package com.yanglao.javabean;

public class Worker {

	
	public Worker(String name, String sex, String birthday, String zizhi,
			String telephone, String email, String mm) {
		super();
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.zizhi = zizhi;
		this.telephone = telephone;
		this.email = email;
		this.mm = mm;
	}
	public Worker() {
		super();
	}
	
	int  id;
	String name;
	String sex;
	String birthday;
	String zizhi;
	String telephone;
	String email;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getZizhi() {
		return zizhi;
	}
	public void setZizhi(String zizhi) {
		this.zizhi = zizhi;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}
}
