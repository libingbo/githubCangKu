package com.yanglao.service.imp;

import com.yanglao.mapper.HealthI;
import com.yanglao.service.HealthService;

public class HealthServiceImp implements HealthService {

	public HealthI healthi ;
	//向t_health表插入一条记录
	@Override
	public int insertHealth(String userObj, int xinlv, int xueya, int hxpl,
			int tiwen, int tizhong, String healthDesc, String testDate) {
		return healthi.insertHealth(userObj, xinlv, xueya, hxpl, tiwen, tizhong, healthDesc, testDate);
	}
	
	public HealthI getHealthi() {
		return healthi;
	}
	public void setHealthi(HealthI healthi) {
		this.healthi = healthi;
	}

}
