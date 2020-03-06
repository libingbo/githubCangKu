package com.yanglao.page;
//分页插件
public class Page {

	public Page(int pageCount, int pageSize) {
		super();
		this.pageCount = pageCount;
		this.pageSize = pageSize;
	}
	
	
	int pageCount;
	int pageSize;
	
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
