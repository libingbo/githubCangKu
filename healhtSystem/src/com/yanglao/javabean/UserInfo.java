package com.yanglao.javabean;

public class UserInfo {

	public UserInfo(String name, String sex, String birthday, String photo,
			String telephone, String email, String address, String hobby,
			String registerTime, String mm) {
		super();
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.photo = photo;
		this.telephone = telephone;
		this.email = email;
		this.address = address;
		this.hobby = hobby;
		this.registerTime = registerTime;
		this.mm = mm;
	}
	public UserInfo() {
		super();
	}
	
	
	
	int id;
	String name;
	String sex;
	String birthday;
	String photo;
	String telephone;
	String email;
	String address;
	String hobby;
	String registerTime;
	String mm;
	
	
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}

	@Override
	public String toString() {
		return "UserInfo [name=" + name + ", sex=" + sex + ", birthday="
				+ birthday + ", photo=" + photo + ", telephone=" + telephone
				+ ", email=" + email + ", address=" + address + ", hobby="
				+ hobby + ", registerTime=" + registerTime + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}
}
