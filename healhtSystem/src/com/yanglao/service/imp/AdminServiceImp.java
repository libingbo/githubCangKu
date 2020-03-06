package com.yanglao.service.imp;

import com.yanglao.javabean.Admin;
import com.yanglao.mapper.AdminI;
import com.yanglao.service.AdminService;

public class AdminServiceImp implements AdminService {

	public AdminI admini;
	@Override
	public Admin selectAdminByName(String name, String mm) {
		return admini.selectAdminByName(name, mm);
	}
	public AdminI getAdmini() {
		return admini;
	}
	public void setAdmini(AdminI admini) {
		this.admini = admini;
	}

}
