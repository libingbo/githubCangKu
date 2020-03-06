package com.yanglao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yanglao.javabean.ZhiBan;

public interface ZhiBanI {
	@Select("select * from t_zhiban")
	public List<ZhiBan> getAllZhiBan();
	
	@Select("select * from t_zhiban where name = #{name}")
	public ZhiBan getZhiBanByName(@Param("name") String name);
}
