package com.yanglao.service.imp;

import java.util.List;

import com.yanglao.javabean.Worker;
import com.yanglao.mapper.WorkerI;
import com.yanglao.service.WorkerService;

public class WorkerServerImp implements WorkerService{

	public WorkerI workeri ;  //mapper层的workeri

	public List<Worker> selectAll() {
		return workeri.getAllWorker();
	}

	public WorkerI getWorkeri() {
		return workeri;
	}

	public void setWorkeri(WorkerI workeri) {
		this.workeri = workeri;
	}

	
	public Worker selectWorkerByName(String name , String mm) {
		System.out.print("***********************"+ name + mm);
		return workeri.getWorker(name, mm);
	}

	@Override
	public int insertWorker(String name, String sex, String birthday,
			String zizhi, String telephone, String email, String mm) {
		return workeri.insertWorker(name, sex, birthday, zizhi, telephone, email, mm);
	}

	@Override
	public Worker selectToDoctor(String name) {
		return workeri.getWorkerByName(name);
	}

	@Override
	public int delWorkerByName(String name) {
		return workeri.delWorkerByName(name);
	}
	

}
