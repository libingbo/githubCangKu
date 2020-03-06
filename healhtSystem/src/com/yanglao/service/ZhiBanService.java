package com.yanglao.service;

import java.util.List;

import com.yanglao.javabean.ZhiBan;
import com.yanglao.mapper.ZhiBanI;

public interface ZhiBanService {
	public List<ZhiBan> selectAll();
	
	public ZhiBan selectZhiBanByName(String name);
}
