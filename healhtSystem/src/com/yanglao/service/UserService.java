package com.yanglao.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yanglao.javabean.UserInfo;

public interface UserService {
	public List<UserInfo> selectAll();
	
	public int insertOldMan( String name, String sex , String birthday ,   String photo ,  String telephone,  String email,  String address,  String hobby , String registerTime ,  String mm);
	
	public int deleteOldMan(String name);
	
	public UserInfo selectByLogin(String name , String mm);
	
	public UserInfo findOldMan(String name);
}
