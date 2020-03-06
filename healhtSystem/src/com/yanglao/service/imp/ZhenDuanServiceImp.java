package com.yanglao.service.imp;

import com.yanglao.mapper.ZhenDuanI;
import com.yanglao.service.ZhenDuanService;

public class ZhenDuanServiceImp implements ZhenDuanService {

	public ZhenDuanI zhenduani;
	@Override
	public int insertZhenDuan(int healthId, String doctor, String date,
			String sick, String state) {
		return zhenduani.insertZhenDuan(healthId, doctor, date, sick, state);
	}
	public ZhenDuanI getZhenduani() {
		return zhenduani;
	}
	public void setZhenduani(ZhenDuanI zhenduani) {
		this.zhenduani = zhenduani;
	}

}
