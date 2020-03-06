package com.yanglao.service;

import java.util.List;

import com.yanglao.javabean.Zyz;

public interface ZyzService {

	public List<Zyz> selectAllZyz();
	
	public Zyz selectZyzByName(String name);
}
