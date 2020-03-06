package com.yanglao.service.imp;

import java.util.List;

import com.yanglao.javabean.Zyz;
import com.yanglao.mapper.ZyzI;
import com.yanglao.service.ZyzService;

public class ZyzServiceImp  implements ZyzService{

	public ZyzI zyzi ;
	
	
	public List<Zyz> selectAllZyz() {
		// TODO Auto-generated method stub
		return zyzi.getAllZyz();
	}

	public ZyzI getZyzi() {
		return zyzi;
	}

	public void setZyzi(ZyzI zyzi) {
		this.zyzi = zyzi;
	}

	@Override
	public Zyz selectZyzByName(String name) {
		return zyzi.getZyzByName(name);
	}

}
