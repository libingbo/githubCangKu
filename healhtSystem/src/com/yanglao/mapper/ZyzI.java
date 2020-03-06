package com.yanglao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yanglao.javabean.Zyz;

public interface ZyzI {

	@Select("select * from t_zyz")
	public List<Zyz> getAllZyz();
	
	@Select("select * from t_zyz where name=#{name}")
	public Zyz getZyzByName(@Param("name") String name);
}
