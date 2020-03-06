package com.yanglao.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yanglao.javabean.Admin;

public interface AdminI {

	@Select("select * from t_admin where name=#{name} and mm = #{mm}")
	public Admin selectAdminByName(@Param("name") String name  ,@Param("mm")  String mm);
}
