package com.project.library.vo;

import java.sql.Date;

public class LibraryBookVo {
	
	private int s_no;
	private String lib_nm;
	private String lib_b_title;
	private String lib_url;
	
	
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getLib_nm() {
		return lib_nm;
	}
	public void setLib_nm(String lib_nm) {
		this.lib_nm = lib_nm;
	}
	public String getLib_b_title() {
		return lib_b_title;
	}
	public void setLib_b_title(String lib_b_title) {
		this.lib_b_title = lib_b_title;
	}
	public String getLib_url() {
		return lib_url;
	}
	public void setLib_url(String lib_url) {
		this.lib_url = lib_url;
	}
	
	@Override
	public String toString() {
		return "LibraryBookVo [s_no=" + s_no + ", lib_nm=" + lib_nm + ", lib_b_title=" + lib_b_title + ", lib_url="
				+ lib_url + "]";
	}
}
