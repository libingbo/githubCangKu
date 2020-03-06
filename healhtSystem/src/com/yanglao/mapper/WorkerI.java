package com.yanglao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yanglao.javabean.Worker;

public interface WorkerI {
	@Select("select * from t_worker")
	public List<Worker> getAllWorker();
	
	@Select("select * from t_worker where name= #{name} and mm =#{mm} ")
	public Worker getWorker(@Param("name") String name,  @Param("mm")String mm);
	
	@Insert("insert into t_worker(name , sex , birthday ,zizhi ,telephone ,email ,mm ) values(#{name} , #{sex} , #{birthday} ,#{zizhi} ,#{telephone} ,#{email} , #{mm})")
	public int insertWorker(@Param("name")String name ,@Param("sex")String sex,@Param("birthday")String birthday,@Param("zizhi")String zizhi,@Param("telephone")String telephone,@Param("email")String email,@Param("mm")String mm);
	
	@Select("select * from t_worker where name= #{name}  ")
	public Worker getWorkerByName(@Param("name") String name);
	
	@Delete("delete from t_worker where name = #{name}")
	public int delWorkerByName(@Param("name") String name);
}
