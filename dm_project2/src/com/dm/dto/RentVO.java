package com.dm.dto;

import java.util.Date;

public class RentVO {
	private int bonum;
	private String dist      ;
	private String writer    ;
	private int price     ;
	private Date regdate   ;
	private Date start_date;
	private Date end_date  ;
	private String rent_id   ;
	private String rent_pwd  ;
	private int rent_ing;
	private String title;
	private String content;
	public int getBonum() {
		return bonum;
	}
	public void setBonum(int bonum) {
		this.bonum = bonum;
	}
	public String getDist() {
		return dist;
	}
	public void setDist(String dist) {
		this.dist = dist;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getRent_id() {
		return rent_id;
	}
	public void setRent_id(String rent_id) {
		this.rent_id = rent_id;
	}
	public String getRent_pwd() {
		return rent_pwd;
	}
	public void setRent_pwd(String rent_pwd) {
		this.rent_pwd = rent_pwd;
	}
	public int getRent_ing() {
		return rent_ing;
	}
	public void setRent_ing(int rent_ing) {
		this.rent_ing = rent_ing;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}                            
