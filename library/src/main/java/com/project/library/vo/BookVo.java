package com.project.library.vo;

import java.sql.Date;

public class BookVo {
	
	private int b_no;
	private String b_title;
	private String b_author;
	private String b_publisher;
	private String b_publish_year;
	private String b_thumbnail;
	private String b_ctg1;
	private String b_ctg2;
	private String b_ctg3;
	
//	private int count;
	private int b_v_no;
	private String userId;
	private int b_viewcnt;
	private Date b_view_date;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_author() {
		return b_author;
	}
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getB_publisher() {
		return b_publisher;
	}
	public void setB_publisher(String b_publisher) {
		this.b_publisher = b_publisher;
	}
	public String getB_publish_year() {
		return b_publish_year;
	}
	public void setB_publish_year(String b_publish_year) {
		this.b_publish_year = b_publish_year;
	}
	public String getB_thumbnail() {
		return b_thumbnail;
	}
	public void setB_thumbnail(String b_thumbnail) {
		this.b_thumbnail = b_thumbnail;
	}
	public String getB_ctg1() {
		return b_ctg1;
	}
	public void setB_ctg1(String b_ctg1) {
		this.b_ctg1 = b_ctg1;
	}
	public String getB_ctg2() {
		return b_ctg2;
	}
	public void setB_ctg2(String b_ctg2) {
		this.b_ctg2 = b_ctg2;
	}
	public String getB_ctg3() {
		return b_ctg3;
	}
	public void setB_ctg3(String b_ctg3) {
		this.b_ctg3 = b_ctg3;
	}
//	public int getCount() {
//		return count;
//	}
//	public void setCount(int count) {
//		this.count = count;
//	}
	public int getB_v_no() {
		return b_v_no;
	}
	public void setB_v_no(int b_v_no) {
		this.b_v_no = b_v_no;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getB_viewcnt() {
		return b_viewcnt;
	}
	public void setB_viewcnt(int b_viewcnt) {
		this.b_viewcnt = b_viewcnt;
	}
	public Date getB_view_date() {
		return b_view_date;
	}
	public void setB_view_date(Date b_view_date) {
		this.b_view_date = b_view_date;
	}
	
	@Override
	public String toString() {
		return "BookVo [b_no=" + b_no + ", b_title=" + b_title + ", b_author=" + b_author + ", b_publisher="
				+ b_publisher + ", b_publish_year=" + b_publish_year + ", b_thumbnail=" + b_thumbnail + ", b_ctg1="
				+ b_ctg1 + ", b_ctg2=" + b_ctg2 + ", b_ctg3=" + b_ctg3 + ", b_v_no=" + b_v_no
				+ ", userId=" + userId + ", b_viewcnt=" + b_viewcnt + ", b_view_date=" + b_view_date + "]";
	}
	
}
