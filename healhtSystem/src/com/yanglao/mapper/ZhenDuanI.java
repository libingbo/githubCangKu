package com.yanglao.mapper;

import org.apache.ibatis.annotations.Insert;

public interface ZhenDuanI {

	@Insert("insert into t_zhenduan(healthId ,doctor ,date , sick , state) values(healthId ,doctor ,date , sick ,state)")
	public int insertZhenDuan(int healthId , String doctor , String date, String sick , String state);
}
