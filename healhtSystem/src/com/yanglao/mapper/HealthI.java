package com.yanglao.mapper;

import net.sf.jsqlparser.statement.select.ValuesList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;

public interface HealthI {

	@Insert("insert into t_health(userObj , xinlv ,xueya ,hxpl ,tiwen ,tizhong , healthDesc , testDate) values(#{userObj} ,#{xinlv} ,#{xueya} ,#{hxpl} ,#{tiwen} , #{tizhong} , #{healthDesc} , #{testDate})")
	public int insertHealth(@Param("userObj") String userObj , @Param("xinlv") int xinlv ,@Param("xueya") int xueya , @Param("hxpl") int hxpl ,@Param("tiwen") int tiwen , @Param("tizhong") int tizhong ,@Param("healthDesc") String healthDesc , @Param("testDate") String testDate );
}
