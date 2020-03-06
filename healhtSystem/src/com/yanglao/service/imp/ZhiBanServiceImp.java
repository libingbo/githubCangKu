package com.yanglao.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yanglao.javabean.ZhiBan;
import com.yanglao.mapper.ZhiBanI;
import com.yanglao.service.ZhiBanService;

public class ZhiBanServiceImp  implements ZhiBanService{

	
	public ZhiBanI zhiBani;


	public List<ZhiBan> selectAll() {
		return zhiBani.getAllZhiBan();
	}

	public ZhiBanI getZhiBani() {
		return zhiBani;
	}

	public void setZhiBani(ZhiBanI zhiBani) {
		this.zhiBani = zhiBani;
	}

	@Override
	public ZhiBan selectZhiBanByName(String name) {
		return zhiBani.getZhiBanByName(name);
	}
	

}
