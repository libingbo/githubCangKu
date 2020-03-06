package com.yanglao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yanglao.javabean.UserInfo;

public interface UserInfoI {
	@Select("select * from t_userinfo where name = #{name}")
	public UserInfo getUserInfo(@Param("name") String name);
	
	@Select("select * from t_userinfo ")
	public List<UserInfo> getAllUserInfo();
	
	@Select("select * from t_userinfo limit #{pageCount} , #{pageSize}")
	public List<UserInfo> getPageUserInfo(@Param("pageCount") int pageCount ,@Param("pageSize") int pageSize);
	
	@Insert("insert into t_userinfo(name , sex ,birthday , photo , telephone , email , address , hobby , registerTime , mm) values(#{name} ,#{sex} ,#{birthday} , null , #{telephone} , #{email} , #{address} , #{hobby} ,#{registerTime} ,  #{mm})")
	public int insertOldMan(@Param("name") String name, @Param("sex") String sex , @Param("birthday") String birthday , @Param("photo")  String photo , @Param("telephone") String telephone, @Param("email") String email, @Param("address") String address, @Param("hobby") String hobbyString , @Param("registerTime") String registerTimeString , @Param("mm") String mm);
	
	@Delete("delete from  t_userinfo where name = #{name}")
	public int deleteOldMan(String name);
	
	//每一个方法名都必须不一样 , 方法名相同参数不同的也不可以
	@Select("select * from t_userinfo where name = #{name} and mm =#{mm}")
	public UserInfo getUserInfoByLogin(@Param("name") String name , @Param("mm") String mm);
}
