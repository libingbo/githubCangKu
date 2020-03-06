package com.yanglao.service.imp;

import java.util.List;

import com.yanglao.javabean.UserInfo;
import com.yanglao.mapper.UserInfoI;
import com.yanglao.service.UserService;

public class UserInfoImp implements UserService {

	UserInfoI userinfoi ;

	public List<UserInfo> selectAll() {
		return userinfoi.getAllUserInfo();
	}

	public UserInfoI getUserinfoi() {
		return userinfoi;
	}

	public void setUserinfoi(UserInfoI userinfoi) {
		this.userinfoi = userinfoi;
	}

	@Override
	public int insertOldMan(String name, String sex, String birthday,
			String photo, String telephone, String email, String address,
			String hobby, String registerTime, String mm) {
		return userinfoi.insertOldMan(name, sex, birthday, photo, telephone, email, address, hobby, registerTime, mm);
	}

	@Override
	public int deleteOldMan(String name) {
		return userinfoi.deleteOldMan(name);
	}

	@Override
	public UserInfo selectByLogin(String name, String mm) {
		return userinfoi.getUserInfoByLogin(name, mm);
	}

	@Override
	public UserInfo findOldMan(String name) {
		return userinfoi.getUserInfo(name);
	}
	
	
}
