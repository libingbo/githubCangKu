package com.yanglao.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yanglao.javabean.Worker;

public interface WorkerService {

	public List<Worker> selectAll();
	
	public Worker selectWorkerByName(String name , String mm);
	
	public int insertWorker(String name ,String sex,String birthday,String zizhi,String telephone,String email,String mm);
	
	public Worker selectToDoctor(String name);
	
	public int delWorkerByName(String name);
}
